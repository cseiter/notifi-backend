class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :users_id
      t.timestamps
    end
    add_foreign_key :comments, :users, column: :users_id
  end
end
