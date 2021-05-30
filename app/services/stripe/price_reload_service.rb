# frozen_string_literal: true

class Stripe::PriceReloadService
  include Service

  def call
    ApplicationRecord.transaction do
      update_all
    end

    Price.all
  end

  private

  module StripePriceExtension
    refine Stripe::Price do
      def attribute_name_for_serialize
        Price.attribute_keys & keys - %i[id]
      end

      def serializable_hash
        to_h.slice(*attribute_name_for_serialize)
            .merge(recurring_interval: recurring.interval)
            .merge(recurring_interval_count: recurring.interval_count)
            .merge(product_id: product)
      end
    end
  end

  using StripePriceExtension

  def update_all
    stripe_prices.each(&method(:upsert_price))
  end

  def stripe_prices
    @stripe_prices ||= Stripe::Price.list
  end

  def upsert_price(stripe_price)
    find_or_initialize_price(stripe_price.id).then do |price|
      price.update!(stripe_price.serializable_hash)
    end
  end

  def find_or_initialize_price(external_id)
    Price.find_or_initialize_by(external_id: external_id)
  end
end
