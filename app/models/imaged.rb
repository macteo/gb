class Imaged < ActiveRecord::Base
  self.abstract_class = true

  mount_uploader :file, ImageUploader
  
  def file_iphone_url
    if self.file
      self.file.iphone.url
    else
      nil
    end
  end
  def file_iphone_2x_url
    if self.file
      self.file.iphone.url
    else
      nil
    end
  end
end