class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :ticket_title
      t.string :ticket_details
      t.references :devices_id
      t.references :owners_id
      t.references :stations_id
      t.references :comments_id
      t.timestamps
    end
    add_foreign_key :tickets, :devices, column: :devices_id
    add_foreign_key :tickets, :owners, column: :owners_id
    add_foreign_key :tickets, :stations, column: :stations_id
    add_foreign_key :tickets, :statuses, column: :statuses_id
    add_foreign_key :tickets, :comments, column: :comments_id
  end
end
