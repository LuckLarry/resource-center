require 'test_helper'

class PriceManagementsControllerTest < ActionController::TestCase
  setup do
    @price_management = price_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:price_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create price_management" do
    assert_difference('PriceManagement.count') do
      post :create, price_management: { position: @price_management.position, sku: @price_management.sku, tag: @price_management.tag }
    end

    assert_redirected_to price_management_path(assigns(:price_management))
  end

  test "should show price_management" do
    get :show, id: @price_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @price_management
    assert_response :success
  end

  test "should update price_management" do
    patch :update, id: @price_management, price_management: { position: @price_management.position, sku: @price_management.sku, tag: @price_management.tag }
    assert_redirected_to price_management_path(assigns(:price_management))
  end

  test "should destroy price_management" do
    assert_difference('PriceManagement.count', -1) do
      delete :destroy, id: @price_management
    end

    assert_redirected_to price_managements_path
  end
end
