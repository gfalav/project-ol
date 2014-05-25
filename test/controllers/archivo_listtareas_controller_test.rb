require 'test_helper'

class ArchivoListtareasControllerTest < ActionController::TestCase
  setup do
    @archivo_listtarea = archivo_listtareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archivo_listtareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archivo_listtarea" do
    assert_difference('ArchivoListtarea.count') do
      post :create, archivo_listtarea: { archivo_id: @archivo_listtarea.archivo_id, listtarea_id: @archivo_listtarea.listtarea_id }
    end

    assert_redirected_to archivo_listtarea_path(assigns(:archivo_listtarea))
  end

  test "should show archivo_listtarea" do
    get :show, id: @archivo_listtarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archivo_listtarea
    assert_response :success
  end

  test "should update archivo_listtarea" do
    patch :update, id: @archivo_listtarea, archivo_listtarea: { archivo_id: @archivo_listtarea.archivo_id, listtarea_id: @archivo_listtarea.listtarea_id }
    assert_redirected_to archivo_listtarea_path(assigns(:archivo_listtarea))
  end

  test "should destroy archivo_listtarea" do
    assert_difference('ArchivoListtarea.count', -1) do
      delete :destroy, id: @archivo_listtarea
    end

    assert_redirected_to archivo_listtareas_path
  end
end
