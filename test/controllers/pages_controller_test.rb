require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get cuisine" do
    get pages_cuisine_url
    assert_response :success
  end

  test "should get cooks" do
    get pages_cooks_url
    assert_response :success
  end

  test "should get order" do
    get pages_order_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end
