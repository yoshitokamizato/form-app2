class Skill < ApplicationRecord
  has_many :users_skills
  has_many :users
end
