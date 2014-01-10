class AddRegionNumberToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :region, :integer
  end
end
