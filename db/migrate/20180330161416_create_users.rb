class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :gender
      t.string :program
      t.string :skils
      t.timestamps
    end
  end
end
