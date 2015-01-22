require 'test_helper'

class TenkenkekkasControllerTest < ActionController::TestCase
  setup do
    @tenkenkekka = tenkenkekkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenkenkekkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenkenkekka" do
    assert_difference('Tenkenkekka.count') do
      post :create, tenkenkekka: { chosajisseki_code: @tenkenkekka.chosajisseki_code, chosakekka_code: @tenkenkekka.chosakekka_code, houmon_id: @tenkenkekka.houmon_id, monshin_kekka_id: @tenkenkekka.monshin_kekka_id, okugai_kekka_id: @tenkenkekka.okugai_kekka_id, okunai_kekka_id: @tenkenkekka.okunai_kekka_id, sokuteichi_kekka_id: @tenkenkekka.sokuteichi_kekka_id }
    end

    assert_redirected_to tenkenkekka_path(assigns(:tenkenkekka))
  end

  test "should show tenkenkekka" do
    get :show, id: @tenkenkekka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenkenkekka
    assert_response :success
  end

  test "should update tenkenkekka" do
    patch :update, id: @tenkenkekka, tenkenkekka: { chosajisseki_code: @tenkenkekka.chosajisseki_code, chosakekka_code: @tenkenkekka.chosakekka_code, houmon_id: @tenkenkekka.houmon_id, monshin_kekka_id: @tenkenkekka.monshin_kekka_id, okugai_kekka_id: @tenkenkekka.okugai_kekka_id, okunai_kekka_id: @tenkenkekka.okunai_kekka_id, sokuteichi_kekka_id: @tenkenkekka.sokuteichi_kekka_id }
    assert_redirected_to tenkenkekka_path(assigns(:tenkenkekka))
  end

  test "should destroy tenkenkekka" do
    assert_difference('Tenkenkekka.count', -1) do
      delete :destroy, id: @tenkenkekka
    end

    assert_redirected_to tenkenkekkas_path
  end
end
