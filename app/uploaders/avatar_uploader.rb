class AvatarUploader < CarrierWave::Uploader::Base
  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fit => [64, 64]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

    def filename
    time = Time.now
    name = time.strftime('%Y%m%d%H%M%S') + '.jpg'
    name.downcase
  end
end
