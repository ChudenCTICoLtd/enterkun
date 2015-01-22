require 'test_helper'

class JyoutaiUmufukanousControllerTest < ActionController::TestCase
  setup do
    @jyoutai_umufukanou = jyoutai_umufukanous(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jyoutai_umufukanous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jyoutai_umufukanou" do
    assert_difference('JyoutaiUmufukanou.count') do
      post :create, jyoutai_umufukanou: { atai: @jyoutai_umufukanou.atai }
    end

    assert_redirected_to jyoutai_umufukanou_path(assigns(:jyoutai_umufukanou))
  end

  test "should show jyoutai_umufukanou" do
    get :show, id: @jyoutai_umufukanou
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jyoutai_umufukanou
    assert_response :success
  end

  test "should update jyoutai_umufukanou" do
    patch :update, id: @jyoutai_umufukanou, jyoutai_umufukanou: { atai: @jyoutai_umufukanou.atai }
    assert_redirected_to jyoutai_umufukanou_path(assigns(:jyoutai_umufukanou))
  end

  test "should destroy jyoutai_umufukanou" do
    assert_difference('JyoutaiUmufukanou.count', -1) do
      delete :destroy, id: @jyoutai_umufukanou
    end

    assert_redirected_to jyoutai_umufukanous_path
  end
end
