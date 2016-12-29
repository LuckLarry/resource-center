# == Schema Information
#
# Table name: product_images
#
#  id                        :integer          not null, primary key
#  position                  :integer
#  image_id                  :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  series                    :text
#  size                      :string
#  product_image_category_id :integer
#  sku_id                    :integer
#

class ProductImage < ActiveRecord::Base
  belongs_to :image
  belongs_to :sku
  belongs_to :product_image_category
  belongs_to :product

  attr_accessor :image_file
  before_save :take_care_of_image

  private

  def take_care_of_image
    return unless image_file = self.image_file

    file_path = image_file.tempfile.path
    md5 = Digest::MD5.file(file_path).to_s
    if found= Image.find_by(md5: md5)
      self.image = found
    else
      self.image = Image.create(
        md5: md5,
        filename: image_file.original_filename,
        file_size: image_file.size,
        image: image_file
      )
    end
  end
end
