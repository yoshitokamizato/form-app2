class UserProgramming < ApplicationRecord
  belongs_to :user
  belongs_to :programming

  validates :user_id, :uniqueness => {:scope => :name}
  validates :name, presence: true
  validates :level, presence: true
end
