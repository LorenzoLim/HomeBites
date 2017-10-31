require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get user_profile_url
    assert_response :success
  end

  test "should get dish" do
    get user_dish_url
    assert_response :success
  end

end
