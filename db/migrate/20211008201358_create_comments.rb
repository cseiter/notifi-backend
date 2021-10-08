class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :user_id
      t.timestamps
    end
    add_foreign_key :comments, :users, column: :user_id
  end
end
