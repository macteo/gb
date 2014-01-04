class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.text :address
      t.integer :category
      t.string :closed
      t.text :contacts
      t.text :desc
      t.string :email
      t.text :instructions
      t.float :latitude, :limit => 10
      t.float :longitude, :limit => 10
      t.string :name
      t.text :note
      t.text :path
      t.string :telephone
      t.string :website
      t.integer :image_id
      t.string :club_id

      t.timestamps
    end
  end
end
