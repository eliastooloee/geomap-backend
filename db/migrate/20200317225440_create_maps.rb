class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.integer :user_id
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :zoom
      t.string :tile_url

      t.timestamps
    end
  end
end
