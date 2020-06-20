class RemoveAmenitiesFromFlat < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :amenities
  end
end
