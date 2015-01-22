require 'test_helper'

class KofusControllerTest < ActionController::TestCase
  setup do
    @kofu = kofus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kofus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kofu" do
    assert_difference('Kofu.count') do
      post :create, kofu: { chosa_kubn: @kofu.chosa_kubn, hashira_bango: @kofu.hashira_bango, kanriku_code: @kofu.kanriku_code, keiyakushubetsu_code: @kofu.keiyakushubetsu_code, kofushubetsu_code: @kofu.kofushubetsu_code, namecode: @kofu.namecode, okyaku_code: @kofu.okyaku_code, okyaku_name: @kofu.okyaku_name, shugo_code: @kofu.shugo_code, torikigai_code: @kofu.torikigai_code }
    end

    assert_redirected_to kofu_path(assigns(:kofu))
  end

  test "should show kofu" do
    get :show, id: @kofu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kofu
    assert_response :success
  end

  test "should update kofu" do
    patch :update, id: @kofu, kofu: { chosa_kubn: @kofu.chosa_kubn, hashira_bango: @kofu.hashira_bango, kanriku_code: @kofu.kanriku_code, keiyakushubetsu_code: @kofu.keiyakushubetsu_code, kofushubetsu_code: @kofu.kofushubetsu_code, namecode: @kofu.namecode, okyaku_code: @kofu.okyaku_code, okyaku_name: @kofu.okyaku_name, shugo_code: @kofu.shugo_code, torikigai_code: @kofu.torikigai_code }
    assert_redirected_to kofu_path(assigns(:kofu))
  end

  test "should destroy kofu" do
    assert_difference('Kofu.count', -1) do
      delete :destroy, id: @kofu
    end

    assert_redirected_to kofus_path
  end
end
