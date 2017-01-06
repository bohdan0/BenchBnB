class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, nul: false
      t.string :session_token, nul: false
      t.string :password_digest, nul: false

      t.timestamps null: false
    end
    add_index :users, :username
  end
end
