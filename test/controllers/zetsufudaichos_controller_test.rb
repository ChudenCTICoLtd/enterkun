require 'test_helper'

class ZetsufudaichosControllerTest < ActionController::TestCase
  setup do
    @zetsufudaicho = zetsufudaichos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zetsufudaichos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zetsufudaicho" do
    assert_difference('Zetsufudaicho.count') do
      post :create, zetsufudaicho: { biko: @zetsufudaicho.biko, haisen: @zetsufudaicho.haisen, kaishuym: @zetsufudaicho.kaishuym, keiyaku_id: @zetsufudaicho.keiyaku_id, kiki: @zetsufudaicho.kiki, scsym: @zetsufudaicho.scsym, sscsym2: @zetsufudaicho.sscsym2, sscsym3: @zetsufudaicho.sscsym3, sscsym4: @zetsufudaicho.sscsym4, sscsym: @zetsufudaicho.sscsym }
    end

    assert_redirected_to zetsufudaicho_path(assigns(:zetsufudaicho))
  end

  test "should show zetsufudaicho" do
    get :show, id: @zetsufudaicho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zetsufudaicho
    assert_response :success
  end

  test "should update zetsufudaicho" do
    patch :update, id: @zetsufudaicho, zetsufudaicho: { biko: @zetsufudaicho.biko, haisen: @zetsufudaicho.haisen, kaishuym: @zetsufudaicho.kaishuym, keiyaku_id: @zetsufudaicho.keiyaku_id, kiki: @zetsufudaicho.kiki, scsym: @zetsufudaicho.scsym, sscsym2: @zetsufudaicho.sscsym2, sscsym3: @zetsufudaicho.sscsym3, sscsym4: @zetsufudaicho.sscsym4, sscsym: @zetsufudaicho.sscsym }
    assert_redirected_to zetsufudaicho_path(assigns(:zetsufudaicho))
  end

  test "should destroy zetsufudaicho" do
    assert_difference('Zetsufudaicho.count', -1) do
      delete :destroy, id: @zetsufudaicho
    end

    assert_redirected_to zetsufudaichos_path
  end
end
