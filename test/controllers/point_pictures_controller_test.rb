require 'test_helper'

class PointPicturesControllerTest < ActionController::TestCase
  setup do
    @point_picture = point_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:point_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create point_picture" do
    assert_difference('PointPicture.count') do
      post :create, point_picture: { PointPictureImage: @point_picture.PointPictureImage, PostingUser_id: @point_picture.PostingUser_id }
    end

    assert_redirected_to point_picture_path(assigns(:point_picture))
  end

  test "should show point_picture" do
    get :show, id: @point_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @point_picture
    assert_response :success
  end

  test "should update point_picture" do
    patch :update, id: @point_picture, point_picture: { PointPictureImage: @point_picture.PointPictureImage, PostingUser_id: @point_picture.PostingUser_id }
    assert_redirected_to point_picture_path(assigns(:point_picture))
  end

  test "should destroy point_picture" do
    assert_difference('PointPicture.count', -1) do
      delete :destroy, id: @point_picture
    end

    assert_redirected_to point_pictures_path
  end
end
