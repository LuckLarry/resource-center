# == Schema Information
#
# Table name: product_image_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductImageCategory < ActiveRecord::Base
end
