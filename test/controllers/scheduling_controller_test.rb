require "test_helper"

class SchedulingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scheduling_index_url
    assert_response :success
  end

  test "should get new" do
    get scheduling_new_url
    assert_response :success
  end

  test "should get create" do
    get scheduling_create_url
    assert_response :success
  end

  test "should get show" do
    get scheduling_show_url
    assert_response :success
  end

  test "should get edit" do
    get scheduling_edit_url
    assert_response :success
  end

  test "should get update" do
    get scheduling_update_url
    assert_response :success
  end

  test "should get destroy" do
    get scheduling_destroy_url
    assert_response :success
  end
end
