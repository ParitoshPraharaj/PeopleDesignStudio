require 'test_helper'

class WebsitesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get lets_get_started" do
    get :lets_get_started
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
