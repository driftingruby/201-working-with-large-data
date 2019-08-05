class CreateVehicleTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_trackers, { id: false } do |t|
      # t.belongs_to :vehicle, null: false, foreign_key: true
      t.bigint :vehicle_id, null: false, foreign_key: true
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.boolean :speeding, default: false
      t.boolean :maintenance_required, default: false
      t.datetime :recorded_on
    end
    # add_index :vehicle_trackers, :id
    # add_index :vehicle_trackers, :vehicle_id
    add_index :vehicle_trackers, [:vehicle_id, :recorded_on]
  end
end
