require 'test_helper'

class ArchivoTareasControllerTest < ActionController::TestCase
  setup do
    @archivo_tarea = archivo_tareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archivo_tareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archivo_tarea" do
    assert_difference('ArchivoTarea.count') do
      post :create, archivo_tarea: { archivo_id: @archivo_tarea.archivo_id, tarea_id: @archivo_tarea.tarea_id }
    end

    assert_redirected_to archivo_tarea_path(assigns(:archivo_tarea))
  end

  test "should show archivo_tarea" do
    get :show, id: @archivo_tarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archivo_tarea
    assert_response :success
  end

  test "should update archivo_tarea" do
    patch :update, id: @archivo_tarea, archivo_tarea: { archivo_id: @archivo_tarea.archivo_id, tarea_id: @archivo_tarea.tarea_id }
    assert_redirected_to archivo_tarea_path(assigns(:archivo_tarea))
  end

  test "should destroy archivo_tarea" do
    assert_difference('ArchivoTarea.count', -1) do
      delete :destroy, id: @archivo_tarea
    end

    assert_redirected_to archivo_tareas_path
  end
end
