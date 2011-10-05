require 'test_helper'

class KptsControllerTest < ActionController::TestCase
  setup do
    @kpt = kpts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kpts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kpt" do
    assert_difference('Kpt.count') do
      post :create, kpt: @kpt.attributes
    end

    assert_redirected_to kpt_path(assigns(:kpt))
  end

  test "should show kpt" do
    get :show, id: @kpt.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kpt.to_param
    assert_response :success
  end

  test "should update kpt" do
    put :update, id: @kpt.to_param, kpt: @kpt.attributes
    assert_redirected_to kpt_path(assigns(:kpt))
  end

  test "should destroy kpt" do
    assert_difference('Kpt.count', -1) do
      delete :destroy, id: @kpt.to_param
    end

    assert_redirected_to kpts_path
  end
end
