require 'test_helper'

class HitosControllerTest < ActionController::TestCase
  setup do
    @hito = hitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hito" do
    assert_difference('Hito.count') do
      post :create, hito: { description: @hito.description, ehito: @hito.ehito, ffin: @hito.ffin, nombre: @hito.nombre, privada: @hito.privada, proyecto_id: @hito.proyecto_id, responsable_id: @hito.responsable_id, thito: @hito.thito }
    end

    assert_redirected_to hito_path(assigns(:hito))
  end

  test "should show hito" do
    get :show, id: @hito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hito
    assert_response :success
  end

  test "should update hito" do
    patch :update, id: @hito, hito: { description: @hito.description, ehito: @hito.ehito, ffin: @hito.ffin, nombre: @hito.nombre, privada: @hito.privada, proyecto_id: @hito.proyecto_id, responsable_id: @hito.responsable_id, thito: @hito.thito }
    assert_redirected_to hito_path(assigns(:hito))
  end

  test "should destroy hito" do
    assert_difference('Hito.count', -1) do
      delete :destroy, id: @hito
    end

    assert_redirected_to hitos_path
  end
end
