require 'test_helper'

class ArchivoHitosControllerTest < ActionController::TestCase
  setup do
    @archivo_hito = archivo_hitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archivo_hitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archivo_hito" do
    assert_difference('ArchivoHito.count') do
      post :create, archivo_hito: { archivo_id: @archivo_hito.archivo_id, hito_id: @archivo_hito.hito_id }
    end

    assert_redirected_to archivo_hito_path(assigns(:archivo_hito))
  end

  test "should show archivo_hito" do
    get :show, id: @archivo_hito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archivo_hito
    assert_response :success
  end

  test "should update archivo_hito" do
    patch :update, id: @archivo_hito, archivo_hito: { archivo_id: @archivo_hito.archivo_id, hito_id: @archivo_hito.hito_id }
    assert_redirected_to archivo_hito_path(assigns(:archivo_hito))
  end

  test "should destroy archivo_hito" do
    assert_difference('ArchivoHito.count', -1) do
      delete :destroy, id: @archivo_hito
    end

    assert_redirected_to archivo_hitos_path
  end
end
