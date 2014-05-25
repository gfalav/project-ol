require 'test_helper'

class UserHitosControllerTest < ActionController::TestCase
  setup do
    @user_hito = user_hitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_hitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_hito" do
    assert_difference('UserHito.count') do
      post :create, user_hito: { hito_id: @user_hito.hito_id, user_id: @user_hito.user_id }
    end

    assert_redirected_to user_hito_path(assigns(:user_hito))
  end

  test "should show user_hito" do
    get :show, id: @user_hito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_hito
    assert_response :success
  end

  test "should update user_hito" do
    patch :update, id: @user_hito, user_hito: { hito_id: @user_hito.hito_id, user_id: @user_hito.user_id }
    assert_redirected_to user_hito_path(assigns(:user_hito))
  end

  test "should destroy user_hito" do
    assert_difference('UserHito.count', -1) do
      delete :destroy, id: @user_hito
    end

    assert_redirected_to user_hitos_path
  end
end
