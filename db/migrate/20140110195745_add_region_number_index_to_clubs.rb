class AddRegionNumberIndexToClubs < ActiveRecord::Migration
  def change
    add_index(:clubs, :region)
  end
end
