require 'test_helper'

class OnskesControllerTest < ActionController::TestCase
  setup do
    @onske = onskes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onskes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onske" do
    assert_difference('Onske.count') do
      post :create, onske: @onske.attributes
    end

    assert_redirected_to onske_path(assigns(:onske))
  end

  test "should show onske" do
    get :show, id: @onske.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onske.to_param
    assert_response :success
  end

  test "should update onske" do
    put :update, id: @onske.to_param, onske: @onske.attributes
    assert_redirected_to onske_path(assigns(:onske))
  end

  test "should destroy onske" do
    assert_difference('Onske.count', -1) do
      delete :destroy, id: @onske.to_param
    end

    assert_redirected_to onskes_path
  end
end
