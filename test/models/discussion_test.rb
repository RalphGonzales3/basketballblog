require 'test_helper'

class DiscussionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @basketball = basketballs(:one)
  end
  test 'should not save discussion with empty information' do
    discussion = Discussion.new

    discussion.save
    refute discussion.valid?
  end

  test 'should save valid discussion info' do
    discussion = Discussion.new

    discussion.body = "Test"
    discussion.basketball = @basketball
    assert discussion.save
  end

  test 'should not save without body' do
    discussion = Discussion.new

    discussion.basketball = @basketball

    discussion.save
    refute discussion.valid?
  end

end
