require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { buy_price: @transaction.buy_price, contract_id: @transaction.contract_id, current_price: @transaction.current_price, portfolio_id: @transaction.portfolio_id, qty: @transaction.qty, variance_in_currency: @transaction.variance_in_currency, variance_in_percent: @transaction.variance_in_percent }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { buy_price: @transaction.buy_price, contract_id: @transaction.contract_id, current_price: @transaction.current_price, portfolio_id: @transaction.portfolio_id, qty: @transaction.qty, variance_in_currency: @transaction.variance_in_currency, variance_in_percent: @transaction.variance_in_percent }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
