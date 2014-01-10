class AddClubIdToNews < ActiveRecord::Migration
  def change
    remove_column :news, :venue_id
    add_column :news, :club_id, :integer
  end
end
