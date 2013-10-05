class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.references :venue

      t.timestamps
    end
    add_index :events, :venue_id
  end
end
