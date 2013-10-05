class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :event
      t.references :user

      t.timestamps
    end
    add_index :memberships, :event_id
    add_index :memberships, :user_id
  end
end
