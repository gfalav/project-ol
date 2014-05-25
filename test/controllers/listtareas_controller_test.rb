require 'test_helper'

class ListtareasControllerTest < ActionController::TestCase
  setup do
    @listtarea = listtareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listtareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listtarea" do
    assert_difference('Listtarea.count') do
      post :create, listtarea: { descripcion: @listtarea.descripcion, elista: @listtarea.elista, falta: @listtarea.falta, fcierre: @listtarea.fcierre, fuce: @listtarea.fuce, fvcto: @listtarea.fvcto, lider_id: @listtarea.lider_id, lista: @listtarea.lista, proyecto_id: @listtarea.proyecto_id }
    end

    assert_redirected_to listtarea_path(assigns(:listtarea))
  end

  test "should show listtarea" do
    get :show, id: @listtarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listtarea
    assert_response :success
  end

  test "should update listtarea" do
    patch :update, id: @listtarea, listtarea: { descripcion: @listtarea.descripcion, elista: @listtarea.elista, falta: @listtarea.falta, fcierre: @listtarea.fcierre, fuce: @listtarea.fuce, fvcto: @listtarea.fvcto, lider_id: @listtarea.lider_id, lista: @listtarea.lista, proyecto_id: @listtarea.proyecto_id }
    assert_redirected_to listtarea_path(assigns(:listtarea))
  end

  test "should destroy listtarea" do
    assert_difference('Listtarea.count', -1) do
      delete :destroy, id: @listtarea
    end

    assert_redirected_to listtareas_path
  end
end
