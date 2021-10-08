class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :ticket_title
      t.string :ticket_details
      t.references :device_id
      t.references :owner_id
      t.references :station_id
      t.references :comment_id
      t.timestamps
    end
    add_foreign_key :tickets, :devices, column: :device_id
    add_foreign_key :tickets, :owners, column: :owner_id
    add_foreign_key :tickets, :stations, column: :station_id
    add_foreign_key :tickets, :statuses, column: :status_id
    add_foreign_key :tickets, :comments, column: :comment_id
  end
end
