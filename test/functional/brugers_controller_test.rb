require 'test_helper'

class BrugersControllerTest < ActionController::TestCase
  setup do
    @bruger = brugers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brugers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bruger" do
    assert_difference('Bruger.count') do
      post :create, bruger: @bruger.attributes
    end

    assert_redirected_to bruger_path(assigns(:bruger))
  end

  test "should show bruger" do
    get :show, id: @bruger.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bruger.to_param
    assert_response :success
  end

  test "should update bruger" do
    put :update, id: @bruger.to_param, bruger: @bruger.attributes
    assert_redirected_to bruger_path(assigns(:bruger))
  end

  test "should destroy bruger" do
    assert_difference('Bruger.count', -1) do
      delete :destroy, id: @bruger.to_param
    end

    assert_redirected_to brugers_path
  end
end
