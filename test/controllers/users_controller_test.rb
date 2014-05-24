require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { celphone: @user.celphone, direccion: @user.direccion, email: @user.email, empresa_id: @user.empresa_id, fvctopass: @user.fvctopass, nombre: @user.nombre, password: 'secret', password_confirmation: 'secret', photofile: @user.photofile, role: @user.role, telefono: @user.telefono, timezone: @user.timezone }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { celphone: @user.celphone, direccion: @user.direccion, email: @user.email, empresa_id: @user.empresa_id, fvctopass: @user.fvctopass, nombre: @user.nombre, password: 'secret', password_confirmation: 'secret', photofile: @user.photofile, role: @user.role, telefono: @user.telefono, timezone: @user.timezone }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
