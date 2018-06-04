class UserProgramming < ActiveRecord::Base
  belongs_to :User
  belongs_to :Programming
end
