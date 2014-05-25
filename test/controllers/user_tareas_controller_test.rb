require 'test_helper'

class UserTareasControllerTest < ActionController::TestCase
  setup do
    @user_tarea = user_tareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_tareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_tarea" do
    assert_difference('UserTarea.count') do
      post :create, user_tarea: { tarea_id: @user_tarea.tarea_id, user_id: @user_tarea.user_id }
    end

    assert_redirected_to user_tarea_path(assigns(:user_tarea))
  end

  test "should show user_tarea" do
    get :show, id: @user_tarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_tarea
    assert_response :success
  end

  test "should update user_tarea" do
    patch :update, id: @user_tarea, user_tarea: { tarea_id: @user_tarea.tarea_id, user_id: @user_tarea.user_id }
    assert_redirected_to user_tarea_path(assigns(:user_tarea))
  end

  test "should destroy user_tarea" do
    assert_difference('UserTarea.count', -1) do
      delete :destroy, id: @user_tarea
    end

    assert_redirected_to user_tareas_path
  end
end
