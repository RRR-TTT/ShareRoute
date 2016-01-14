require 'test_helper'

class GoalpointsControllerTest < ActionController::TestCase
  setup do
    @goalpoint = goalpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goalpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goalpoint" do
    assert_difference('Goalpoint.count') do
      post :create, goalpoint: { GoalpointName: @goalpoint.GoalpointName, GoalpointSpendTime: @goalpoint.GoalpointSpendTime }
    end

    assert_redirected_to goalpoint_path(assigns(:goalpoint))
  end

  test "should show goalpoint" do
    get :show, id: @goalpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goalpoint
    assert_response :success
  end

  test "should update goalpoint" do
    patch :update, id: @goalpoint, goalpoint: { GoalpointName: @goalpoint.GoalpointName, GoalpointSpendTime: @goalpoint.GoalpointSpendTime }
    assert_redirected_to goalpoint_path(assigns(:goalpoint))
  end

  test "should destroy goalpoint" do
    assert_difference('Goalpoint.count', -1) do
      delete :destroy, id: @goalpoint
    end

    assert_redirected_to goalpoints_path
  end
end
