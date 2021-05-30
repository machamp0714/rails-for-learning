require 'rails_helper'

RSpec.describe Price, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: prices
#
#  id                       :bigint           not null, primary key
#  active                   :boolean
#  billing_schema           :string(255)
#  currency                 :string(255)
#  lookup_key               :string(255)
#  recurring_interval       :string(255)
#  recurring_interval_count :integer
#  recurring_usage_type     :string(255)
#  type                     :string(255)
#  unit_amount              :integer
#  unit_amount_decimal      :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  external_id              :string(255)
#  product_id               :string(255)
#
# Indexes
#
#  index_prices_on_active      (active)
#  index_prices_on_lookup_key  (lookup_key) UNIQUE
#  index_prices_on_product_id  (product_id)
#
