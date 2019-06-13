# == Schema Information
#
# Table name: shops
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  address       :string           not null
#  metro_station :string
#  city          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Shop < ApplicationRecord
  has_many :product_shops
  has_many :products, through: :product_shops

  validates :name, :address, :city, presence: true
end
