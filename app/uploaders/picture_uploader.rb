class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :image do
    process :resize_to_fit => [600, 500]
  end

def default_url
  'images/noimage-big.png'
end

end
