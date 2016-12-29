# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  product_category_id :integer
#  product_no          :string
#  name                :string
#  description         :text
#  spec                :string
#  brand               :string
#  water_absrp_rate_id :integer
#  thickness           :decimal(, )
#  shape_id            :integer
#  color_id            :integer
#  cases_per_pallet    :integer
#  unit_weight         :decimal(, )
#  unit_area           :decimal(, )
#  package_weight      :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  surface_craft_id    :integer
#  base_unit_id        :integer
#  business_unit_id    :integer
#  material_id         :integer
#  packing_unit        :integer
#  tabtype             :string
#

class Product < ActiveRecord::Base
  belongs_to :product_category
  belongs_to :root_product_category, class_name: "ProductCategory", foreign_key: :root_product_category_id
  belongs_to :rim_category
  belongs_to :material
  belongs_to :surface_craft
  belongs_to :water_absrp_rate
  belongs_to :shape
  belongs_to :color
  has_many :price_management, dependent: :destroy
  has_many :product_images, dependent: :destroy
  has_many :site_sku, dependent: :destroy
  has_many :sku, dependent: :destroy
  has_many :baby_management, dependent: :destroy

  validates_presence_of :product_no, :message => "产品编号不能为空"
  validates_presence_of :product_category_id, :message => "产品品类不能为空"
end
