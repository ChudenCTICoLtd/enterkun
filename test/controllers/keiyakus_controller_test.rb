require 'test_helper'

class KeiyakusControllerTest < ActionController::TestCase
  setup do
    @keiyaku = keiyakus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keiyakus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keiyaku" do
    assert_difference('Keiyaku.count') do
      post :create, keiyaku: { chosa_kubn: @keiyaku.chosa_kubn, hashira_bango: @keiyaku.hashira_bango, kanriku_code: @keiyaku.kanriku_code, keiyakushubetsu_code: @keiyaku.keiyakushubetsu_code, okyaku_code: @keiyaku.okyaku_code, okyaku_name: @keiyaku.okyaku_name, torikigai_code: @keiyaku.torikigai_code }
    end

    assert_redirected_to keiyaku_path(assigns(:keiyaku))
  end

  test "should show keiyaku" do
    get :show, id: @keiyaku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @keiyaku
    assert_response :success
  end

  test "should update keiyaku" do
    patch :update, id: @keiyaku, keiyaku: { chosa_kubn: @keiyaku.chosa_kubn, hashira_bango: @keiyaku.hashira_bango, kanriku_code: @keiyaku.kanriku_code, keiyakushubetsu_code: @keiyaku.keiyakushubetsu_code, okyaku_code: @keiyaku.okyaku_code, okyaku_name: @keiyaku.okyaku_name, torikigai_code: @keiyaku.torikigai_code }
    assert_redirected_to keiyaku_path(assigns(:keiyaku))
  end

  test "should destroy keiyaku" do
    assert_difference('Keiyaku.count', -1) do
      delete :destroy, id: @keiyaku
    end

    assert_redirected_to keiyakus_path
  end
end
