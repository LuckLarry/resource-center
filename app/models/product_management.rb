# == Schema Information
#
# Table name: product_managements
#
#  id         :integer          not null, primary key
#  sku        :string
#  tag        :string
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductManagement < ActiveRecord::Base
end
