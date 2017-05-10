class Article < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true
	validates :image, presence: true
	validate :image_size_validation

	mount_uploader :image, ImageUploader	
	# belongs_to :user

	private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 3.0.megabytes
  end

end
	