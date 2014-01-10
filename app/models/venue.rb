class Venue < Imaged
  belongs_to :club
  has_one :image
  validates :name, presence: true
end
