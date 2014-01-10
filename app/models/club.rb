class Club < Imaged
  has_many :venues
  has_many :news
  has_one :image
  
  validates :name, presence: true
  validates :region, presence: true
end
