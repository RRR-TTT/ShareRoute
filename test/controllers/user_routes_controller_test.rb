require 'test_helper'

class UserRoutesControllerTest < ActionController::TestCase
  setup do
    @user_route = user_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_route" do
    assert_difference('UserRoute.count') do
      post :create, user_route: { UserRouteName: @user_route.UserRouteName, total_time: @user_route.total_time }
    end

    assert_redirected_to user_route_path(assigns(:user_route))
  end

  test "should show user_route" do
    get :show, id: @user_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_route
    assert_response :success
  end

  test "should update user_route" do
    patch :update, id: @user_route, user_route: { UserRouteName: @user_route.UserRouteName, total_time: @user_route.total_time }
    assert_redirected_to user_route_path(assigns(:user_route))
  end

  test "should destroy user_route" do
    assert_difference('UserRoute.count', -1) do
      delete :destroy, id: @user_route
    end

    assert_redirected_to user_routes_path
  end
end
