class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :provider
      t.string :oauth_token
      t.string :punch_token

      t.timestamps
    end
  end
end
