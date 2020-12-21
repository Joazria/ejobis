require 'test_helper'

class EjobiValidationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ejobi_validations_show_url
    assert_response :success
  end

  test "should get new" do
    get ejobi_validations_new_url
    assert_response :success
  end

  test "should get create" do
    get ejobi_validations_create_url
    assert_response :success
  end

  test "should get edit" do
    get ejobi_validations_edit_url
    assert_response :success
  end

  test "should get update" do
    get ejobi_validations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ejobi_validations_destroy_url
    assert_response :success
  end

end
