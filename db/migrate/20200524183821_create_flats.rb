class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :address
      t.string :title
      t.references :user, foreign_key: true
      t.integer :guests
      t.integer :price
      t.string :flat_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :amenities
      t.text :description

      t.timestamps
    end
  end
end
