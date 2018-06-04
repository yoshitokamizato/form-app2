class AddSkillToUsersSkills < ActiveRecord::Migration
  def change
    add_column :users_skills, :skill, :integer
  end
end
