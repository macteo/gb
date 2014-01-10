class AddClubIdIndexToNews < ActiveRecord::Migration
  def change
    add_index(:news, :club_id)
  end
end
