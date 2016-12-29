require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { base_unit: @product.base_unit, brand: @product.brand, business_unit: @product.business_unit, cases_per_pallet: @product.cases_per_pallet, color_id: @product.color_id, description: @product.description, material: @product.material, name: @product.name, package_weight: @product.package_weight, packing_unit: @product.packing_unit, product_category_id: @product.product_category_id, product_no: @product.product_no, shape_id: @product.shape_id, spec: @product.spec, surface_craft: @product.surface_craft, thickness: @product.thickness, unit_area: @product.unit_area, unit_weight: @product.unit_weight, water_absrp_rate_id: @product.water_absrp_rate_id }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { base_unit: @product.base_unit, brand: @product.brand, business_unit: @product.business_unit, cases_per_pallet: @product.cases_per_pallet, color_id: @product.color_id, description: @product.description, material: @product.material, name: @product.name, package_weight: @product.package_weight, packing_unit: @product.packing_unit, product_category_id: @product.product_category_id, product_no: @product.product_no, shape_id: @product.shape_id, spec: @product.spec, surface_craft: @product.surface_craft, thickness: @product.thickness, unit_area: @product.unit_area, unit_weight: @product.unit_weight, water_absrp_rate_id: @product.water_absrp_rate_id }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
