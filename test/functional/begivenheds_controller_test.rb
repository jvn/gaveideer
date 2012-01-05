require 'test_helper'

class BegivenhedsControllerTest < ActionController::TestCase
  setup do
    @begivenhed = begivenheds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:begivenheds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create begivenhed" do
    assert_difference('Begivenhed.count') do
      post :create, begivenhed: @begivenhed.attributes
    end

    assert_redirected_to begivenhed_path(assigns(:begivenhed))
  end

  test "should show begivenhed" do
    get :show, id: @begivenhed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @begivenhed.to_param
    assert_response :success
  end

  test "should update begivenhed" do
    put :update, id: @begivenhed.to_param, begivenhed: @begivenhed.attributes
    assert_redirected_to begivenhed_path(assigns(:begivenhed))
  end

  test "should destroy begivenhed" do
    assert_difference('Begivenhed.count', -1) do
      delete :destroy, id: @begivenhed.to_param
    end

    assert_redirected_to begivenheds_path
  end
end
