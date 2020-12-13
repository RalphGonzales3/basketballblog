require 'test_helper'

class DiscussionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discussion = discussions(:one)
    @basketball = basketballs(:one)
  end

  test "should get index" do
    get basketball_discussions_url(@basketball)
    assert_response :success
  end

  test "should get new" do
    get new_basketball_discussion_url(@basketball, @discussion)
    assert_response :success
  end

  test "should show discussion" do
    get basketball_discussions_url(@basketball, @discussion)
    assert_response :success
  end

end
