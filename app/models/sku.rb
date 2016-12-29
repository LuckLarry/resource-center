# == Schema Information
#
# Table name: skus
#
#  id         :integer          not null, primary key
#  product_id :integer
#  level      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sku < ActiveRecord::Base
  has_many :product_images, dependent: :destroy
  has_many :site_skus, dependent: :destroy
  belongs_to :product

  accepts_nested_attributes_for :product_images
  accepts_nested_attributes_for :site_skus
end
