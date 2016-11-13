class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :avatar do
    process :resize_to_fit => [64, 64]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  avatar = AvatarUploader.new
  avatar.store!('noimage.png')
end

