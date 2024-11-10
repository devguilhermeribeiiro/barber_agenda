require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get show_barber" do
    get home_show_barber_url
    assert_response :success
  end
end
