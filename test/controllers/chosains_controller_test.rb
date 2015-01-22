require 'test_helper'

class ChosainsControllerTest < ActionController::TestCase
  setup do
    @chosain = chosains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chosains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chosain" do
    assert_difference('Chosain.count') do
      post :create, chosain: { name: @chosain.name, namecode: @chosain.namecode }
    end

    assert_redirected_to chosain_path(assigns(:chosain))
  end

  test "should show chosain" do
    get :show, id: @chosain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chosain
    assert_response :success
  end

  test "should update chosain" do
    patch :update, id: @chosain, chosain: { name: @chosain.name, namecode: @chosain.namecode }
    assert_redirected_to chosain_path(assigns(:chosain))
  end

  test "should destroy chosain" do
    assert_difference('Chosain.count', -1) do
      delete :destroy, id: @chosain
    end

    assert_redirected_to chosains_path
  end
end
