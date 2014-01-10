class AddImageFilesToVenuesClubsAndSponsors < ActiveRecord::Migration
  def change
    add_column :clubs, :file, :string
    add_column :sponsors, :file, :string
    add_column :venues, :file, :string
  end
end
