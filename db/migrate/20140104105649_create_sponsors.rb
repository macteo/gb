class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :title
      t.string :subtitle
      t.string :image_id
      t.date :finish
      t.date :start
      t.string :website

      t.timestamps
    end
  end
end
