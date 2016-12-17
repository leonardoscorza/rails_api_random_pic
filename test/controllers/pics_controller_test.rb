require 'test_helper'

class PicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pic = pics(:one)
  end

  test "should get index" do
    get pics_url, as: :json
    assert_response :success
  end

  test "should create pic" do
    assert_difference('Pic.count') do
      post pics_url, params: { pic: { photo: @pic.photo } }, as: :json
    end

    assert_response 201
  end

  test "should show pic" do
    get pic_url(@pic), as: :json
    assert_response :success
  end

  test "should update pic" do
    patch pic_url(@pic), params: { pic: { photo: @pic.photo } }, as: :json
    assert_response 200
  end

  test "should destroy pic" do
    assert_difference('Pic.count', -1) do
      delete pic_url(@pic), as: :json
    end

    assert_response 204
  end
end
