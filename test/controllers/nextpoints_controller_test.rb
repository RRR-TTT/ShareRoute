require 'test_helper'

class NextpointsControllerTest < ActionController::TestCase
  setup do
    @nextpoint = nextpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nextpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nextpoint" do
    assert_difference('Nextpoint.count') do
      post :create, nextpoint: { NextpointName: @nextpoint.NextpointName, NextpointRequiredTime: @nextpoint.NextpointRequiredTime, NextpointTransportation: @nextpoint.NextpointTransportation }
    end

    assert_redirected_to nextpoint_path(assigns(:nextpoint))
  end

  test "should show nextpoint" do
    get :show, id: @nextpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nextpoint
    assert_response :success
  end

  test "should update nextpoint" do
    patch :update, id: @nextpoint, nextpoint: { NextpointName: @nextpoint.NextpointName, NextpointRequiredTime: @nextpoint.NextpointRequiredTime, NextpointTransportation: @nextpoint.NextpointTransportation }
    assert_redirected_to nextpoint_path(assigns(:nextpoint))
  end

  test "should destroy nextpoint" do
    assert_difference('Nextpoint.count', -1) do
      delete :destroy, id: @nextpoint
    end

    assert_redirected_to nextpoints_path
  end
end
