class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :extension
      t.string :bundle
      t.string :path
      t.string :remote

      t.timestamps
    end
  end
end
