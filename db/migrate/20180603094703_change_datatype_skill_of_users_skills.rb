class ChangeDatatypeSkillOfUsersSkills < ActiveRecord::Migration
  def change
    change_column :users_skills, :skill, :string
  end
end
