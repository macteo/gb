class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :subtitle
      t.string :venue_id
      t.date :finish
      t.date :show
      t.date :start

      t.timestamps
    end
  end
end
