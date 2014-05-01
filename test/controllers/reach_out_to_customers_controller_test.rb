require 'test_helper'

class ReachOutToCustomersControllerTest < ActionController::TestCase
  setup do
    @reach_out_to_customer = reach_out_to_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reach_out_to_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reach_out_to_customer" do
    assert_difference('ReachOutToCustomer.count') do
      post :create, reach_out_to_customer: { email: @reach_out_to_customer.email, image: @reach_out_to_customer.image, to: @reach_out_to_customer.to }
    end

    assert_redirected_to reach_out_to_customer_path(assigns(:reach_out_to_customer))
  end

  test "should show reach_out_to_customer" do
    get :show, id: @reach_out_to_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reach_out_to_customer
    assert_response :success
  end

  test "should update reach_out_to_customer" do
    patch :update, id: @reach_out_to_customer, reach_out_to_customer: { email: @reach_out_to_customer.email, image: @reach_out_to_customer.image, to: @reach_out_to_customer.to }
    assert_redirected_to reach_out_to_customer_path(assigns(:reach_out_to_customer))
  end

  test "should destroy reach_out_to_customer" do
    assert_difference('ReachOutToCustomer.count', -1) do
      delete :destroy, id: @reach_out_to_customer
    end

    assert_redirected_to reach_out_to_customers_path
  end
end
