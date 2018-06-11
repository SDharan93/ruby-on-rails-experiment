# This migration adds indexes the the email column of the User model.
class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
    add_index(:users, :email, { unique: true })
  end
end
