class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :troop
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
