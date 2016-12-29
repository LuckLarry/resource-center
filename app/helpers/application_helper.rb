module ApplicationHelper
  def product_category_options
    ProductCategory.all.map do |p|
      [p.select_name, p.id]
    end
  end
end
