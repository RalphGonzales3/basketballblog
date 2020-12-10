require 'test_helper'

class BasketballsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basketball = basketballs(:one)
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_url
  end

  test "should get index" do
    get basketballs_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'h1', 'Basketball Players'
  end

  test "should get new" do
    get new_basketball_url
    assert_response :success
  end

  test "should create basketball" do
    assert_difference('Basketball.count') do
      post basketballs_url, params: { basketball: { facts: @basketball.facts, name: @basketball.name + " create", team: @basketball.team } }
    end

    assert_redirected_to basketball_url(Basketball.last)
  end

  test "should show basketball" do
    get basketball_url(@basketball)
    assert_response :success
  end

  test "should get edit" do
    get edit_basketball_url(@basketball)
    assert_response :success
  end

  test "should update basketball" do
    patch basketball_url(@basketball), params: { basketball: { facts: @basketball.facts, name: @basketball.name, team: @basketball.team } }
    assert_redirected_to basketball_url(@basketball)
  end

  test "should destroy basketball" do
    assert_difference('Basketball.count', -1) do
      delete basketball_url(@basketball)
    end

    assert_redirected_to basketballs_url
  end
end
