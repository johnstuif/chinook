require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { billing_address: @invoice.billing_address, billing_city: @invoice.billing_city, billing_country: @invoice.billing_country, billing_postal_code: @invoice.billing_postal_code, billing_state: @invoice.billing_state, customer_id: @invoice.customer_id, invoice_date: @invoice.invoice_date, total: @invoice.total }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { billing_address: @invoice.billing_address, billing_city: @invoice.billing_city, billing_country: @invoice.billing_country, billing_postal_code: @invoice.billing_postal_code, billing_state: @invoice.billing_state, customer_id: @invoice.customer_id, invoice_date: @invoice.invoice_date, total: @invoice.total }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
