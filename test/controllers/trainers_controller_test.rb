require 'test_helper'

class TrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trainers_index_url
    assert_response :success
  end

  test "should get new" do
    get trainers_new_url
    assert_response :success
  end

  test "should get create" do
    get trainers_create_url
    assert_response :success
  end

  test "should get edit" do
    get trainers_edit_url
    assert_response :success
  end

  test "should get update" do
    get trainers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trainers_destroy_url
    assert_response :success
  end

end
