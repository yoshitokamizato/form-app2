class UserProgramming < ActiveRecord::Base
  belongs_to :user
  belongs_to :programming
end
