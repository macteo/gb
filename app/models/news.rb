class News < ActiveRecord::Base
  belongs_to :club
  validates :title, presence: true
end
