class AddNameToUserProgramming < ActiveRecord::Migration
  def change
    add_column :user_programmings, :name, :string
    add_column :user_programmings, :level, :integer
  end
end
