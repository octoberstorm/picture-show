class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  version :thumb do
    process :resize_to_limit => [200, 200]
  end

  def filename
    if original_filename.present?
      "#{DateTime.now.to_i}_#{original_filename}"
    else
      super
    end
  end
end
