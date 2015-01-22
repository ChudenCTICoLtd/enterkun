require 'test_helper'

class MonshinsControllerTest < ActionController::TestCase
  setup do
    @monshin = monshins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monshins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monshin" do
    assert_difference('Monshin.count') do
      post :create, monshin: { jisshi_flag: @monshin.jisshi_flag, mijisshi_riyu: @monshin.mijisshi_riyu, mononifurebiribiri_umumi: @monshin.mononifurebiribiri_umumi, zoukaichiku_umumi: @monshin.zoukaichiku_umumi }
    end

    assert_redirected_to monshin_path(assigns(:monshin))
  end

  test "should show monshin" do
    get :show, id: @monshin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monshin
    assert_response :success
  end

  test "should update monshin" do
    patch :update, id: @monshin, monshin: { jisshi_flag: @monshin.jisshi_flag, mijisshi_riyu: @monshin.mijisshi_riyu, mononifurebiribiri_umumi: @monshin.mononifurebiribiri_umumi, zoukaichiku_umumi: @monshin.zoukaichiku_umumi }
    assert_redirected_to monshin_path(assigns(:monshin))
  end

  test "should destroy monshin" do
    assert_difference('Monshin.count', -1) do
      delete :destroy, id: @monshin
    end

    assert_redirected_to monshins_path
  end
end
