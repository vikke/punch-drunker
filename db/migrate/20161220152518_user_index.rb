class UserIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :punch_token
  end
end
