class Picture < ActiveRecord::Base
   enum status: [:main, :sub]
   mount_uploader :image, PictureUploader
   belongs_to :product
   validates :product, :image, :status, presence: true

end
