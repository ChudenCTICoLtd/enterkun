require 'test_helper'

class RiyuOkunaisControllerTest < ActionController::TestCase
  setup do
    @riyu_okunai = riyu_okunais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riyu_okunais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create riyu_okunai" do
    assert_difference('RiyuOkunai.count') do
      post :create, riyu_okunai: { atai: @riyu_okunai.atai }
    end

    assert_redirected_to riyu_okunai_path(assigns(:riyu_okunai))
  end

  test "should show riyu_okunai" do
    get :show, id: @riyu_okunai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @riyu_okunai
    assert_response :success
  end

  test "should update riyu_okunai" do
    patch :update, id: @riyu_okunai, riyu_okunai: { atai: @riyu_okunai.atai }
    assert_redirected_to riyu_okunai_path(assigns(:riyu_okunai))
  end

  test "should destroy riyu_okunai" do
    assert_difference('RiyuOkunai.count', -1) do
      delete :destroy, id: @riyu_okunai
    end

    assert_redirected_to riyu_okunais_path
  end
end
