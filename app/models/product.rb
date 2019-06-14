# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  vendor_code :integer          not null
#  title       :string           not null
#  weight      :integer          not null
#  size        :string           not null
#  color       :string           not null
#  price       :float            not null
#  total       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  has_many :product_shops
  has_many :shops, through: :product_shops

  validates :vendor_code, :title, :weight, :size, :color, :price, :total, presence: true
end
