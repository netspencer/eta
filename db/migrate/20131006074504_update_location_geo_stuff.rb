class UpdateLocationGeoStuff < ActiveRecord::Migration
  def change
    add_column :locations, :accuracy, :float
    rename_column :locations, :distance_from_last, :distance_to_last
  end  
end
