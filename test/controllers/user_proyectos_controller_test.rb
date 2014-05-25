require 'test_helper'

class UserProyectosControllerTest < ActionController::TestCase
  setup do
    @user_proyecto = user_proyectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_proyecto" do
    assert_difference('UserProyecto.count') do
      post :create, user_proyecto: { proyecto_id: @user_proyecto.proyecto_id, user_id: @user_proyecto.user_id }
    end

    assert_redirected_to user_proyecto_path(assigns(:user_proyecto))
  end

  test "should show user_proyecto" do
    get :show, id: @user_proyecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_proyecto
    assert_response :success
  end

  test "should update user_proyecto" do
    patch :update, id: @user_proyecto, user_proyecto: { proyecto_id: @user_proyecto.proyecto_id, user_id: @user_proyecto.user_id }
    assert_redirected_to user_proyecto_path(assigns(:user_proyecto))
  end

  test "should destroy user_proyecto" do
    assert_difference('UserProyecto.count', -1) do
      delete :destroy, id: @user_proyecto
    end

    assert_redirected_to user_proyectos_path
  end
end
