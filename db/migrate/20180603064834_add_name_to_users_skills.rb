class AddNameToUsersSkills < ActiveRecord::Migration
  def change
    add_column :users_skills, :name, :string
  end
end
