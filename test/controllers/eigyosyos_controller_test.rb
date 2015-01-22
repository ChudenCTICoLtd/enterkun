require 'test_helper'

class EigyosyosControllerTest < ActionController::TestCase
  setup do
    @eigyosyo = eigyosyos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eigyosyos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eigyosyo" do
    assert_difference('Eigyosyo.count') do
      post :create, eigyosyo: { kyoukaicode: @eigyosyo.kyoukaicode, kyoukaimei: @eigyosyo.kyoukaimei }
    end

    assert_redirected_to eigyosyo_path(assigns(:eigyosyo))
  end

  test "should show eigyosyo" do
    get :show, id: @eigyosyo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eigyosyo
    assert_response :success
  end

  test "should update eigyosyo" do
    patch :update, id: @eigyosyo, eigyosyo: { kyoukaicode: @eigyosyo.kyoukaicode, kyoukaimei: @eigyosyo.kyoukaimei }
    assert_redirected_to eigyosyo_path(assigns(:eigyosyo))
  end

  test "should destroy eigyosyo" do
    assert_difference('Eigyosyo.count', -1) do
      delete :destroy, id: @eigyosyo
    end

    assert_redirected_to eigyosyos_path
  end
end
