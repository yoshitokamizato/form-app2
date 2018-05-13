class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :course
      t.integer :hour
      t.integer :price
      t.timestamps
    end
  end
end
