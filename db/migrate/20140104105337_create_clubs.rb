class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.text :address
      t.string :closed
      t.string :contacts
      t.string :email
      t.string :fax
      t.text :instructions
      t.float :latitude, :limit => 10
      t.float :longitude, :limit => 10
      t.string :name
      t.text :note
      t.text :path
      t.string :position
      t.string :season
      t.string :telephone
      t.string :website
      t.integer :image_id

      t.timestamps
    end
  end
end
