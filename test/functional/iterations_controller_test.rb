require 'test_helper'

class IterationsControllerTest < ActionController::TestCase
  setup do
    @iteration = iterations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iterations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iteration" do
    assert_difference('Iteration.count') do
      post :create, iteration: @iteration.attributes
    end

    assert_redirected_to iteration_path(assigns(:iteration))
  end

  test "should show iteration" do
    get :show, id: @iteration.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iteration.to_param
    assert_response :success
  end

  test "should update iteration" do
    put :update, id: @iteration.to_param, iteration: @iteration.attributes
    assert_redirected_to iteration_path(assigns(:iteration))
  end

  test "should destroy iteration" do
    assert_difference('Iteration.count', -1) do
      delete :destroy, id: @iteration.to_param
    end

    assert_redirected_to iterations_path
  end
end
