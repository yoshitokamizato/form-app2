class AddUsersSkillToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :users_skill, index: true, foreign_key: true
  end
end
