class AddDataForVelocityCalculations < ActiveRecord::Migration
  def change
    add_column :locations, :distance_from_last, :float
    add_column :locations, :time_since_last, :float
    add_column :locations, :velocity_since_last, :float
  end
end
