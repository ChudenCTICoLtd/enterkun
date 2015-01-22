require 'test_helper'

class SokuteisControllerTest < ActionController::TestCase
  setup do
    @sokutei = sokuteis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sokuteis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sokutei" do
    assert_difference('Sokutei.count') do
      post :create, sokutei: { kairo_su: @sokutei.kairo_su, roueidenryu_ikkatsu: @sokutei.roueidenryu_ikkatsu, zetsuenteikou_ikkatsu: @sokutei.zetsuenteikou_ikkatsu }
    end

    assert_redirected_to sokutei_path(assigns(:sokutei))
  end

  test "should show sokutei" do
    get :show, id: @sokutei
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sokutei
    assert_response :success
  end

  test "should update sokutei" do
    patch :update, id: @sokutei, sokutei: { kairo_su: @sokutei.kairo_su, roueidenryu_ikkatsu: @sokutei.roueidenryu_ikkatsu, zetsuenteikou_ikkatsu: @sokutei.zetsuenteikou_ikkatsu }
    assert_redirected_to sokutei_path(assigns(:sokutei))
  end

  test "should destroy sokutei" do
    assert_difference('Sokutei.count', -1) do
      delete :destroy, id: @sokutei
    end

    assert_redirected_to sokuteis_path
  end
end
