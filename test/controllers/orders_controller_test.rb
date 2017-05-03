require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { company_address: @order.company_address, company_name: @order.company_name, company_tax_id: @order.company_tax_id, condition: @order.condition, email: @order.email, name: @order.name, payment_date: @order.payment_date, payment_description: @order.payment_description, payment_id: @order.payment_id, payment_method: @order.payment_method, payment_status: @order.payment_status, payment_total: @order.payment_total, phone: @order.phone, ticket_early_bird: @order.ticket_early_bird, ticket_last_ticket: @order.ticket_last_ticket, ticket_regular: @order.ticket_regular, wht: @order.wht } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { company_address: @order.company_address, company_name: @order.company_name, company_tax_id: @order.company_tax_id, condition: @order.condition, email: @order.email, name: @order.name, payment_date: @order.payment_date, payment_description: @order.payment_description, payment_id: @order.payment_id, payment_method: @order.payment_method, payment_status: @order.payment_status, payment_total: @order.payment_total, phone: @order.phone, ticket_early_bird: @order.ticket_early_bird, ticket_last_ticket: @order.ticket_last_ticket, ticket_regular: @order.ticket_regular, wht: @order.wht } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
