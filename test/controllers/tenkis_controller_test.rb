require 'test_helper'

class TenkisControllerTest < ActionController::TestCase
  setup do
    @tenki = tenkis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenkis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenki" do
    assert_difference('Tenki.count') do
      post :create, tenki: { atai: @tenki.atai }
    end

    assert_redirected_to tenki_path(assigns(:tenki))
  end

  test "should show tenki" do
    get :show, id: @tenki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenki
    assert_response :success
  end

  test "should update tenki" do
    patch :update, id: @tenki, tenki: { atai: @tenki.atai }
    assert_redirected_to tenki_path(assigns(:tenki))
  end

  test "should destroy tenki" do
    assert_difference('Tenki.count', -1) do
      delete :destroy, id: @tenki
    end

    assert_redirected_to tenkis_path
  end
end
