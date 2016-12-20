class PunchIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :punches, :user_id
    add_index :punches, :punch_at
  end
end
