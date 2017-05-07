require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get read" do
    get :read
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

end
