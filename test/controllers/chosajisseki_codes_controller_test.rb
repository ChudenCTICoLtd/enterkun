require 'test_helper'

class ChosajissekiCodesControllerTest < ActionController::TestCase
  setup do
    @chosajisseki_code = chosajisseki_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chosajisseki_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chosajisseki_code" do
    assert_difference('ChosajissekiCode.count') do
      post :create, chosajisseki_code: { atai: @chosajisseki_code.atai }
    end

    assert_redirected_to chosajisseki_code_path(assigns(:chosajisseki_code))
  end

  test "should show chosajisseki_code" do
    get :show, id: @chosajisseki_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chosajisseki_code
    assert_response :success
  end

  test "should update chosajisseki_code" do
    patch :update, id: @chosajisseki_code, chosajisseki_code: { atai: @chosajisseki_code.atai }
    assert_redirected_to chosajisseki_code_path(assigns(:chosajisseki_code))
  end

  test "should destroy chosajisseki_code" do
    assert_difference('ChosajissekiCode.count', -1) do
      delete :destroy, id: @chosajisseki_code
    end

    assert_redirected_to chosajisseki_codes_path
  end
end
