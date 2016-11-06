require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get profile_path
    assert_response :success
  end

end
