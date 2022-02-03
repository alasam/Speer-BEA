class CreateUsers < ActiveRecord::Migration[7.0]
  def change

    # creates "users" table in DB
    create_table :users do |t|
      
      # username string
      t.string :username
      # password string
      t.string :password_digest
      # timestamp when account made
      t.timestamps

    end
  end
end
