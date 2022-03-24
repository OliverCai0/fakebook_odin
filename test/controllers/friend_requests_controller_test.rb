require "test_helper"

class FriendRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get friend_requests_new_url
    assert_response :success
  end
end
