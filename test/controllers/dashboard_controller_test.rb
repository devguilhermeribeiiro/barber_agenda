require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get customer" do
    get dashboard_customer_url
    assert_response :success
  end

  test "should get barber" do
    get dashboard_barber_url
    assert_response :success
  end

  test "should get barber_shop" do
    get dashboard_barber_shop_url
    assert_response :success
  end
end
