class AddSkillToProgramming < ActiveRecord::Migration
  def change
    add_column :programmings, :skill, :integer
  end
end
