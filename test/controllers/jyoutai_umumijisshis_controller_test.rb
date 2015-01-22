require 'test_helper'

class JyoutaiUmumijisshisControllerTest < ActionController::TestCase
  setup do
    @jyoutai_umumijisshi = jyoutai_umumijisshis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jyoutai_umumijisshis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jyoutai_umumijisshi" do
    assert_difference('JyoutaiUmumijisshi.count') do
      post :create, jyoutai_umumijisshi: { atai: @jyoutai_umumijisshi.atai }
    end

    assert_redirected_to jyoutai_umumijisshi_path(assigns(:jyoutai_umumijisshi))
  end

  test "should show jyoutai_umumijisshi" do
    get :show, id: @jyoutai_umumijisshi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jyoutai_umumijisshi
    assert_response :success
  end

  test "should update jyoutai_umumijisshi" do
    patch :update, id: @jyoutai_umumijisshi, jyoutai_umumijisshi: { atai: @jyoutai_umumijisshi.atai }
    assert_redirected_to jyoutai_umumijisshi_path(assigns(:jyoutai_umumijisshi))
  end

  test "should destroy jyoutai_umumijisshi" do
    assert_difference('JyoutaiUmumijisshi.count', -1) do
      delete :destroy, id: @jyoutai_umumijisshi
    end

    assert_redirected_to jyoutai_umumijisshis_path
  end
end
