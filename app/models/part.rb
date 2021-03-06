class Part < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :part_name, :part_number, :part_description, :part_category,
            :image, presence: true
  validates :part_name, :part_number, uniqueness: true
  validates :image, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'Image must be GIF, JPG or PNG format'
  }
  validates :part_purchase_price, numericality: {greater_than_or_equal_to: 0.01}
end
