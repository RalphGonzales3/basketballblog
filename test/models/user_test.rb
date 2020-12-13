require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = users(:user_001)
  end

  test 'valid user' do
    assert @user.valid?
  end

  test 'invalid user without email' do
    user = User.new

    refute user.valid?
    assert_not_nil user.errors[:email]
  end

  test 'created basketball' do
    assert_equal 2, @user.basketballs.size
  end
  
end
