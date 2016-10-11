require 'test_helper'

class TokemonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tokemons_index_url
    assert_response :success
  end

  test "should get show" do
    get tokemons_show_url
    assert_response :success
  end

  test "should get new" do
    get tokemons_new_url
    assert_response :success
  end

  test "should get create" do
    get tokemons_create_url
    assert_response :success
  end

  test "should get edit" do
    get tokemons_edit_url
    assert_response :success
  end

  test "should get update" do
    get tokemons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tokemons_destroy_url
    assert_response :success
  end

end
