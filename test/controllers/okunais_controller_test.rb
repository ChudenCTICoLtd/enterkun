require 'test_helper'

class OkunaisControllerTest < ActionController::TestCase
  setup do
    @okunai = okunais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:okunais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create okunai" do
    assert_difference('Okunai.count') do
      post :create, okunai: { bundenbanhason_umu: @okunai.bundenbanhason_umu, jisshi_flag: @okunai.jisshi_flag, juudenburosyutsu_umu: @okunai.juudenburosyutsu_umu, mijisshi_riyu: @okunai.mijisshi_riyu }
    end

    assert_redirected_to okunai_path(assigns(:okunai))
  end

  test "should show okunai" do
    get :show, id: @okunai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @okunai
    assert_response :success
  end

  test "should update okunai" do
    patch :update, id: @okunai, okunai: { bundenbanhason_umu: @okunai.bundenbanhason_umu, jisshi_flag: @okunai.jisshi_flag, juudenburosyutsu_umu: @okunai.juudenburosyutsu_umu, mijisshi_riyu: @okunai.mijisshi_riyu }
    assert_redirected_to okunai_path(assigns(:okunai))
  end

  test "should destroy okunai" do
    assert_difference('Okunai.count', -1) do
      delete :destroy, id: @okunai
    end

    assert_redirected_to okunais_path
  end
end
