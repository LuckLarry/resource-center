# == Schema Information
#
# Table name: product_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  parent_id  :integer
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductCategory < ActiveRecord::Base
  belongs_to :parent, class_name: "ProductCategory"
  has_many :children, class_name: "ProductCategory", foreign_key: "parent_id"
  has_one :product
  has_many :product_category_materials
  has_many :materials, through: :product_category_materials
  has_many :product_category_surface_crafts
  has_many :surface_crafts, through: :product_category_surface_crafts
  has_many :product_category_shapes
  has_many :shapes, through: :product_category_shapes
  has_many :product_category_base_units
  has_many :base_units, through: :product_category_base_units

  def select_name
    if self.parent.nil?
      self.name
    else
      "#{self.parent.select_name} > #{self.name}"
    end
  end

  def self.top_categories
    ProductCategory.where(parent_id: nil).order(:position).all
  end
end
