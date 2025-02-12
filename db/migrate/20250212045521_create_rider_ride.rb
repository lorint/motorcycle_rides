class CreateRiderRide < ActiveRecord::Migration[8.0]
  def change
    create_table :rider_rides do |t|
      t.references :rider, null: false, foreign_key: true
      t.references :ride, null: false, foreign_key: true

      t.timestamps
    end
  end
end
