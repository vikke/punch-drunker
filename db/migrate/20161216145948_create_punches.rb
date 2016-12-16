class CreatePunches < ActiveRecord::Migration[5.0]
  def change
    create_table :punches do |t|
      t.integer :user_id
      t.timestamp :punch_at

      t.timestamps
    end
  end
end
