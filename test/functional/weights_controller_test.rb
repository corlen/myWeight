require 'test_helper'

class WeightsControllerTest < ActionController::TestCase
  setup do
    @weight = weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight" do
    assert_difference('Weight.count') do
      post :create, :weight => @weight.attributes
    end

    assert_redirected_to weight_path(assigns(:weight))
  end

  test "should show weight" do
    get :show, :id => @weight.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @weight.to_param
    assert_response :success
  end

  test "should update weight" do
    put :update, :id => @weight.to_param, :weight => @weight.attributes
    assert_redirected_to weight_path(assigns(:weight))
  end

  test "should destroy weight" do
    assert_difference('Weight.count', -1) do
      delete :destroy, :id => @weight.to_param
    end

    assert_redirected_to weights_path
  end
end
