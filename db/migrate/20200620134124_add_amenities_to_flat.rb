class AddAmenitiesToFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :amenities, :string, array: true, default: '{}'
  end
end
