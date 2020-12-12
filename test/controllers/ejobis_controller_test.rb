require 'test_helper'

class EjobisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ejobis_show_url
    assert_response :success
  end

  test "should get new" do
    get ejobis_new_url
    assert_response :success
  end

  test "should get create" do
    get ejobis_create_url
    assert_response :success
  end

  test "should get edit" do
    get ejobis_edit_url
    assert_response :success
  end

  test "should get update" do
    get ejobis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ejobis_destroy_url
    assert_response :success
  end

end
