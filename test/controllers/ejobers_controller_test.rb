require 'test_helper'

class EjobersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ejobers_show_url
    assert_response :success
  end

  test "should get new" do
    get ejobers_new_url
    assert_response :success
  end

  test "should get create" do
    get ejobers_create_url
    assert_response :success
  end

  test "should get edit" do
    get ejobers_edit_url
    assert_response :success
  end

  test "should get update" do
    get ejobers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ejobers_destroy_url
    assert_response :success
  end

end
