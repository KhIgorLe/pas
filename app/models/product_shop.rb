# == Schema Information
#
# Table name: product_shops
#
#  id         :bigint           not null, primary key
#  product_id :bigint
#  shop_id    :bigint
#  amount     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductShop < ApplicationRecord
  include Filterable

  belongs_to :product
  belongs_to :shop

  scope :shop_id, ->(ids) { where(shop_id: ids) }

  delegate :name, :address, :metro_station, :city, to: :shop
  delegate :title, :vendor_code, :weight, :size, :color, :price, :total, to: :product
end
