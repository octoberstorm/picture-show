class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  def public_url thumb = false
    file_name = thumb ? self.image.url(:thumb) : self.image.url
    "http://192.168.1.107:8080/v1/AUTH_8684c73a2e814bdeb314f40c5830a708/framgia-pictures/#{file_name}"
  end
end
