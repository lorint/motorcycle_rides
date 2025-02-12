class CreateRide < ActiveRecord::Migration[8.0]
  def change
    create_table :rides do |t|
      t.references :origin, null: false
      t.references :destination, null: false
      t.datetime :start
      t.datetime :end
      t.integer :miles

      t.timestamps
    end
  end
end
