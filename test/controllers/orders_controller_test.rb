require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get tahnks" do
    get orders_tahnks_url
    assert_response :success
  end

  test "should get index" do
    get orders_index_url
    assert_response :success
  end

end
