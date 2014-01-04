class News < ActiveRecord::Base
  belongs_to :venue
  validates :title, presence: true
end
