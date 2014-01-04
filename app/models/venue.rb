class Venue < ActiveRecord::Base
  belongs_to :club
  has_many :news
  has_one :image
end
