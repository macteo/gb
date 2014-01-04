class Club < ActiveRecord::Base
  has_many :venues
  has_one :image
  
  validates :name, presence: true
  
end
