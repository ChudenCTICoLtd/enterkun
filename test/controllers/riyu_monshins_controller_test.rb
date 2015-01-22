require 'test_helper'

class RiyuMonshinsControllerTest < ActionController::TestCase
  setup do
    @riyu_monshin = riyu_monshins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riyu_monshins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create riyu_monshin" do
    assert_difference('RiyuMonshin.count') do
      post :create, riyu_monshin: { atai: @riyu_monshin.atai }
    end

    assert_redirected_to riyu_monshin_path(assigns(:riyu_monshin))
  end

  test "should show riyu_monshin" do
    get :show, id: @riyu_monshin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @riyu_monshin
    assert_response :success
  end

  test "should update riyu_monshin" do
    patch :update, id: @riyu_monshin, riyu_monshin: { atai: @riyu_monshin.atai }
    assert_redirected_to riyu_monshin_path(assigns(:riyu_monshin))
  end

  test "should destroy riyu_monshin" do
    assert_difference('RiyuMonshin.count', -1) do
      delete :destroy, id: @riyu_monshin
    end

    assert_redirected_to riyu_monshins_path
  end
end
