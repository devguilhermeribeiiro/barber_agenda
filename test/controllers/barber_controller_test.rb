require "test_helper"

class BarberControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get barber_show_url
    assert_response :success
  end
end
