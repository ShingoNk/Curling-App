require "test_helper"

class UserTeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get followings" do
    get user_teams_followings_url
    assert_response :success
  end
end
