class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :number
      t.integer :password
      t.string :address

      t.timestamps
    end
  end
end
