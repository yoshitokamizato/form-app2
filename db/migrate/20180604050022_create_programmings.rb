class CreateProgrammings < ActiveRecord::Migration
  def change
    create_table :programmings do |t|
      t.string :name
      t.timestamps
    end
  end
end
