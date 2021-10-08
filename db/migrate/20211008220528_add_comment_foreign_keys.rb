class AddCommentForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :users, foreign_key: true
    add_reference :comments, :tickets, foreign_key: true
  end
end
