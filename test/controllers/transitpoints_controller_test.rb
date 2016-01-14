require 'test_helper'

class TransitpointsControllerTest < ActionController::TestCase
  setup do
    @transitpoint = transitpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transitpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transitpoint" do
    assert_difference('Transitpoint.count') do
      post :create, transitpoint: { TransitpointName: @transitpoint.TransitpointName, TransitpointSpendTime: @transitpoint.TransitpointSpendTime }
    end

    assert_redirected_to transitpoint_path(assigns(:transitpoint))
  end

  test "should show transitpoint" do
    get :show, id: @transitpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transitpoint
    assert_response :success
  end

  test "should update transitpoint" do
    patch :update, id: @transitpoint, transitpoint: { TransitpointName: @transitpoint.TransitpointName, TransitpointSpendTime: @transitpoint.TransitpointSpendTime }
    assert_redirected_to transitpoint_path(assigns(:transitpoint))
  end

  test "should destroy transitpoint" do
    assert_difference('Transitpoint.count', -1) do
      delete :destroy, id: @transitpoint
    end

    assert_redirected_to transitpoints_path
  end
end
