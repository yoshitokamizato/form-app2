class UserProgramming < ApplicationRecord
  belongs_to :user
  belongs_to :programming

  validates :user_id, :uniqueness => {:scope => :skill_name}
  validates :skill_name, presence: true
  validates :level, presence: true

  attr_accessor :skill, :name

  def search
    UserProgramming.ransack(skill_name_eq: @skill, user_name_eq: @name).result
  end
end
