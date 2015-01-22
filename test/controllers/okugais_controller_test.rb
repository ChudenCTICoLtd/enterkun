require 'test_helper'

class OkugaisControllerTest < ActionController::TestCase
  setup do
    @okugai = okugais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:okugais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create okugai" do
    assert_difference('Okugai.count') do
      post :create, okugai: { tabutsurikaku_ryohifuno: @okugai.tabutsurikaku_ryohifuno, toritsukezetsuen_ryohifuno: @okugai.toritsukezetsuen_ryohifuno }
    end

    assert_redirected_to okugai_path(assigns(:okugai))
  end

  test "should show okugai" do
    get :show, id: @okugai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @okugai
    assert_response :success
  end

  test "should update okugai" do
    patch :update, id: @okugai, okugai: { tabutsurikaku_ryohifuno: @okugai.tabutsurikaku_ryohifuno, toritsukezetsuen_ryohifuno: @okugai.toritsukezetsuen_ryohifuno }
    assert_redirected_to okugai_path(assigns(:okugai))
  end

  test "should destroy okugai" do
    assert_difference('Okugai.count', -1) do
      delete :destroy, id: @okugai
    end

    assert_redirected_to okugais_path
  end
end
