require 'test_helper'

class HoumonsControllerTest < ActionController::TestCase
  setup do
    @houmon = houmons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:houmons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create houmon" do
    assert_difference('Houmon.count') do
      post :create, houmon: { houmon_su: @houmon.houmon_su, houmon_ymd: @houmon.houmon_ymd, kofu_id: @houmon.kofu_id, tenki: @houmon.tenki, zaitaku_jotai: @houmon.zaitaku_jotai }
    end

    assert_redirected_to houmon_path(assigns(:houmon))
  end

  test "should show houmon" do
    get :show, id: @houmon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @houmon
    assert_response :success
  end

  test "should update houmon" do
    patch :update, id: @houmon, houmon: { houmon_su: @houmon.houmon_su, houmon_ymd: @houmon.houmon_ymd, kofu_id: @houmon.kofu_id, tenki: @houmon.tenki, zaitaku_jotai: @houmon.zaitaku_jotai }
    assert_redirected_to houmon_path(assigns(:houmon))
  end

  test "should destroy houmon" do
    assert_difference('Houmon.count', -1) do
      delete :destroy, id: @houmon
    end

    assert_redirected_to houmons_path
  end
end
