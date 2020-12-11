require 'test_helper'

class DiscussionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save discussion with empty information' do
    discussion = Discussion.new

    discussion.save
    refute discussion.valid?
  end

  test 'should save valid discussion info' do
    discussion = Discussion.new

    discussion.body = 'Test'
    discussion.basketball_id = 1

    assert discussion.save
  end

end
