require 'test_helper'

class UserListtareasControllerTest < ActionController::TestCase
  setup do
    @user_listtarea = user_listtareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_listtareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_listtarea" do
    assert_difference('UserListtarea.count') do
      post :create, user_listtarea: { listtarea_id: @user_listtarea.listtarea_id, user_id: @user_listtarea.user_id }
    end

    assert_redirected_to user_listtarea_path(assigns(:user_listtarea))
  end

  test "should show user_listtarea" do
    get :show, id: @user_listtarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_listtarea
    assert_response :success
  end

  test "should update user_listtarea" do
    patch :update, id: @user_listtarea, user_listtarea: { listtarea_id: @user_listtarea.listtarea_id, user_id: @user_listtarea.user_id }
    assert_redirected_to user_listtarea_path(assigns(:user_listtarea))
  end

  test "should destroy user_listtarea" do
    assert_difference('UserListtarea.count', -1) do
      delete :destroy, id: @user_listtarea
    end

    assert_redirected_to user_listtareas_path
  end
end
