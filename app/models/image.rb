# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  md5        :string
#  file_size  :integer
#  filename   :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :product_images
end
