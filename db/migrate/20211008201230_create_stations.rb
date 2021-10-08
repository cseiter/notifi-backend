class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :station_type

      t.timestamps
    end
  end
end
