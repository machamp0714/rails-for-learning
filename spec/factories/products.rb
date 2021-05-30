FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyString" }
    active { false }
    external_id { "MyString" }
  end
end

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  active      :boolean
#  description :string(255)
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  external_id :string(255)
#
# Indexes
#
#  index_products_on_active       (active)
#  index_products_on_external_id  (external_id)
#
