require 'test_helper'

class ProductManagementsControllerTest < ActionController::TestCase
  setup do
    @product_management = product_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_management" do
    assert_difference('ProductManagement.count') do
      post :create, product_management: { position: @product_management.position, sku: @product_management.sku, tag: @product_management.tag }
    end

    assert_redirected_to product_management_path(assigns(:product_management))
  end

  test "should show product_management" do
    get :show, id: @product_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_management
    assert_response :success
  end

  test "should update product_management" do
    patch :update, id: @product_management, product_management: { position: @product_management.position, sku: @product_management.sku, tag: @product_management.tag }
    assert_redirected_to product_management_path(assigns(:product_management))
  end

  test "should destroy product_management" do
    assert_difference('ProductManagement.count', -1) do
      delete :destroy, id: @product_management
    end

    assert_redirected_to product_managements_path
  end
end
