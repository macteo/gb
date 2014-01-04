class Image < ActiveRecord::Base
  belongs_to :venue
  belongs_to :sponsor
  belongs_to :club
end
