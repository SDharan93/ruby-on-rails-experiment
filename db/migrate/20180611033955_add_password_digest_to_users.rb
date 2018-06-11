# Adds password digest attribute to the Users model.
class AddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column(:users, :password_digest, :string)
  end
end
