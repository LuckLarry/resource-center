# == Schema Information
#
# Table name: price_managements
#
#  id             :integer          not null, primary key
#  level          :string
#  platform       :string
#  product_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  face_price     :decimal(, )
#  nomember_price :decimal(, )
#  member_price   :decimal(, )
#  warehouse_id   :integer
#

class PriceManagement < ActiveRecord::Base
  belongs_to :product
  belongs_to :warehouse
  belongs_to :price_unit
  belongs_to :currency

  validates_presence_of :product_id, message: "产品不能为空"
  validates_presence_of :warehouse_id, message: "仓库不能为空"
  #validates :warehouse_id, uniqueness: { scope: [:product_id, :level]}, meaasge: "相同SKU下仓库不能重复"

  def product_no
    self.product.product_no
  end

end
