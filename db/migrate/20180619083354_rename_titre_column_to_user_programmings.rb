class RenameTitreColumnToUserProgrammings < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_programmings, :name, :skill_name
  end
end
