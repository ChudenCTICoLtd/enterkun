require 'test_helper'

class ZaitakusControllerTest < ActionController::TestCase
  setup do
    @zaitaku = zaitakus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zaitakus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zaitaku" do
    assert_difference('Zaitaku.count') do
      post :create, zaitaku: { atai: @zaitaku.atai }
    end

    assert_redirected_to zaitaku_path(assigns(:zaitaku))
  end

  test "should show zaitaku" do
    get :show, id: @zaitaku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zaitaku
    assert_response :success
  end

  test "should update zaitaku" do
    patch :update, id: @zaitaku, zaitaku: { atai: @zaitaku.atai }
    assert_redirected_to zaitaku_path(assigns(:zaitaku))
  end

  test "should destroy zaitaku" do
    assert_difference('Zaitaku.count', -1) do
      delete :destroy, id: @zaitaku
    end

    assert_redirected_to zaitakus_path
  end
end
