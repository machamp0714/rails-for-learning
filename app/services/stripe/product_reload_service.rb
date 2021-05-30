# frozen_string_literal: true

class Stripe::ProductReloadService
  include Service

  def call
    ApplicationRecord.transaction do
      update_all
    end

    Product.all
  end

  private

  module StripeProductExtension
    refine Stripe::Product do
      def attribute_name_for_serialize
        Product.attribute_keys & keys - %i[id]
      end

      def serializable_hash
        to_h.slice(*attribute_name_for_serialize)
      end
    end
  end

  using StripeProductExtension

  def stripe_products
    @stripe_products ||= Stripe::Product.list
  end

  def update_all
    stripe_products.each(&method(:upsert_product))
  end

  def upsert_product(stripe_product)
    find_or_initialize_product(stripe_product.id).then do |product|
      product.update!(stripe_product.serializable_hash)
    end
  end

  def find_or_initialize_product(external_id)
    Product.find_or_initialize_by(external_id: external_id)
  end
end
