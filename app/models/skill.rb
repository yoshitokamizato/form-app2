class Skill < ActiveRecord::Base
  has_many :users_skills
  has_many :users
end
