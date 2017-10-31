require 'test_helper'

class ArrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arrow = arrows(:one)
  end

  test "should get index" do
    get arrows_url
    assert_response :success
  end

  test "should get new" do
    get new_arrow_url
    assert_response :success
  end

  test "should create arrow" do
    assert_difference('Arrow.count') do
      post arrows_url, params: { arrow: { content: @arrow.content, read: @arrow.read, user_id: @arrow.user_id } }
    end

    assert_redirected_to arrow_url(Arrow.last)
  end

  test "should show arrow" do
    get arrow_url(@arrow)
    assert_response :success
  end

  test "should get edit" do
    get edit_arrow_url(@arrow)
    assert_response :success
  end

  test "should update arrow" do
    patch arrow_url(@arrow), params: { arrow: { content: @arrow.content, read: @arrow.read, user_id: @arrow.user_id } }
    assert_redirected_to arrow_url(@arrow)
  end

  test "should destroy arrow" do
    assert_difference('Arrow.count', -1) do
      delete arrow_url(@arrow)
    end

    assert_redirected_to arrows_url
  end
end
