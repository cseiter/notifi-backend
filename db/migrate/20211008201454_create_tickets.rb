class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :ticket_title
      t.string :ticket_details
      t.references :device_id
      t.timestamps
    end
    add_foreign_key :tickets, :devices, column: :device_id
  end
end
