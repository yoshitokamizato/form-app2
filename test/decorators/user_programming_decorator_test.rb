require 'test_helper'

class UserProgrammingDecoratorTest < ActiveSupport::TestCase
  def setup
    @user_programming = UserProgramming.new.extend UserProgrammingDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
