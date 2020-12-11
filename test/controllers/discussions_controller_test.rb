require 'test_helper'

class DiscussionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discussion = discussions(:one)
    @basketball = basketballs(:one)
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
  end

  test "should get index" do
    get basketball_discussions_url(@basketball)
    assert_response :success
  end

  test "should get new" do
    get new_basketball_discussion_url(@basketball, @discussion)
    assert_response :success
  end

  test "should create discussion" do
    assert_difference('Discussion.count') do
      post basketball_discussions_url(@discussion), params: { discussion: { basketball_id: @discussion.basketball_id.id, body: @discussion.body } }
    end

    assert_redirected_to discussion_url(Discussion.last)
  end

  test "should show discussion" do
    get basketball_discussions_url(@basketball, @discussion)
    assert_response :success
  end

  test "should get edit" do
    get edit_basketball_discussion_url(@basketball, @discussion)
    assert_response :success
  end

  test "should update discussion" do
    patch basketball_discussion_url(@basketball, @discussion), params: { discussion: { basketball_id: @discussion.basketball_id.id, body: @discussion.body } }
    assert_redirected_to basketball_discussion_url(@basketball, @discussion)
  end

  test "should destroy discussion" do
    assert_difference('Discussion.count', -1) do
      delete basketball_discussion_url(@basketball,@discussion)
    end

    assert_redirected_to discussions_url
  end
end
