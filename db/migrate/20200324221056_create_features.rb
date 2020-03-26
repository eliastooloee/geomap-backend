class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.string :feature_data
      t.references :map, null: false, foreign_key: true
      t.timestamps
    end
  end
end
