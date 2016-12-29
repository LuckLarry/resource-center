class ProductCategoryColor < ActiveRecord::Base
  belongs_to :colors
  belongs_to :product_category
end
