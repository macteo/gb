class Imaged < ActiveRecord::Base
  self.abstract_class = true

  mount_uploader :file, ImageUploader
  
  def file_iphone_url
    if self.file
      if ENV["STORAGE"] == "fog"
        self.file.iphone.url
      else 
        "#{ENV["DOMAIN"]}#{self.file.iphone.url}"
      end
    else
      nil
    end
  end
  def file_iphone_2x_url
    if self.file
      if ENV["STORAGE"] == "fog"
        self.file.iphone_2x.url
      else 
        "#{ENV["DOMAIN"]}#{self.file.iphone_2x.url}"
      end      
    else
      nil
    end
  end
end
