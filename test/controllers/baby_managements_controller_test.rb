require 'test_helper'

class BabyManagementsControllerTest < ActionController::TestCase
  setup do
    @baby_management = baby_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baby_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baby_management" do
    assert_difference('BabyManagement.count') do
      post :create, baby_management: { position: @baby_management.position, sku: @baby_management.sku, tag: @baby_management.tag }
    end

    assert_redirected_to baby_management_path(assigns(:baby_management))
  end

  test "should show baby_management" do
    get :show, id: @baby_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baby_management
    assert_response :success
  end

  test "should update baby_management" do
    patch :update, id: @baby_management, baby_management: { position: @baby_management.position, sku: @baby_management.sku, tag: @baby_management.tag }
    assert_redirected_to baby_management_path(assigns(:baby_management))
  end

  test "should destroy baby_management" do
    assert_difference('BabyManagement.count', -1) do
      delete :destroy, id: @baby_management
    end

    assert_redirected_to baby_managements_path
  end
end
