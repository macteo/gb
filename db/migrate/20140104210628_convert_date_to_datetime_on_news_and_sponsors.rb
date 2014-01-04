class ConvertDateToDatetimeOnNewsAndSponsors < ActiveRecord::Migration
  def change
    remove_column :news, :start
    add_column :news, :start, :datetime
    remove_column :news, :finish
    add_column :news, :finish, :datetime
    remove_column :news, :show
    add_column :news, :show, :datetime
    remove_column :sponsors, :start
    add_column :sponsors, :start, :datetime
    remove_column :sponsors, :finish
    add_column :sponsors, :finish, :datetime
  end
end
