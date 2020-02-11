require 'test_helper'

class FollowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get followings_show_url
    assert_response :success
  end

end
