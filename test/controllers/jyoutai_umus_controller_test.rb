require 'test_helper'

class JyoutaiUmusControllerTest < ActionController::TestCase
  setup do
    @jyoutai_umu = jyoutai_umus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jyoutai_umus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jyoutai_umu" do
    assert_difference('JyoutaiUmu.count') do
      post :create, jyoutai_umu: { atai: @jyoutai_umu.atai }
    end

    assert_redirected_to jyoutai_umu_path(assigns(:jyoutai_umu))
  end

  test "should show jyoutai_umu" do
    get :show, id: @jyoutai_umu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jyoutai_umu
    assert_response :success
  end

  test "should update jyoutai_umu" do
    patch :update, id: @jyoutai_umu, jyoutai_umu: { atai: @jyoutai_umu.atai }
    assert_redirected_to jyoutai_umu_path(assigns(:jyoutai_umu))
  end

  test "should destroy jyoutai_umu" do
    assert_difference('JyoutaiUmu.count', -1) do
      delete :destroy, id: @jyoutai_umu
    end

    assert_redirected_to jyoutai_umus_path
  end
end
