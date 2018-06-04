class ChangeDatatypeSkilsOfUsers < ActiveRecord::Migration
  def change
    change_column :users, :skils, :text, array: true
  end
end
