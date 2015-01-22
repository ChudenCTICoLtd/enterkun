require 'test_helper'

class ChosakekkaCodesControllerTest < ActionController::TestCase
  setup do
    @chosakekka_code = chosakekka_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chosakekka_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chosakekka_code" do
    assert_difference('ChosakekkaCode.count') do
      post :create, chosakekka_code: { atai: @chosakekka_code.atai }
    end

    assert_redirected_to chosakekka_code_path(assigns(:chosakekka_code))
  end

  test "should show chosakekka_code" do
    get :show, id: @chosakekka_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chosakekka_code
    assert_response :success
  end

  test "should update chosakekka_code" do
    patch :update, id: @chosakekka_code, chosakekka_code: { atai: @chosakekka_code.atai }
    assert_redirected_to chosakekka_code_path(assigns(:chosakekka_code))
  end

  test "should destroy chosakekka_code" do
    assert_difference('ChosakekkaCode.count', -1) do
      delete :destroy, id: @chosakekka_code
    end

    assert_redirected_to chosakekka_codes_path
  end
end
