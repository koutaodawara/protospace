class Picture < ActiveRecord::Base
   enum status: [:main, :sub]
   mount_uploader :image, PictureUploader
   belongs_to :product,inverse_of: :pictures
   validates_presence_of :image
end
