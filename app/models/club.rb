class Club < ActiveRecord::Base
  has_many :venues
  has_one :image
end
