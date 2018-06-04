class CreateUserProgrammings < ActiveRecord::Migration
  def change
    create_table :user_programmings do |t|
      t.references :user,  index: true, foreign_key: true
      t.references :programming, index: true, foreign_key: true
      t.timestamps
    end
  end
end
