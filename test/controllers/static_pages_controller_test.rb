require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get homepg" do
    get static_pages_homepg_url
    assert_response :success
  end

  test "should get aboutpg" do
    get static_pages_aboutpg_url
    assert_response :success
  end

end
