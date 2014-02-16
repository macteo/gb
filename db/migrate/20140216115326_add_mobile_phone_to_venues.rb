class AddMobilePhoneToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :mobile, :string
  end
end
