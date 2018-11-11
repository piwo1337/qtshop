require 'test_helper'

class GempostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gempost = gemposts(:one)
  end

  test "should get index" do
    get gemposts_url
    assert_response :success
  end

  test "should get new" do
    get new_gempost_url
    assert_response :success
  end

  test "should create gempost" do
    assert_difference('Gempost.count') do
      post gemposts_url, params: { gempost: { content: @gempost.content, img: @gempost.img, title: @gempost.title } }
    end

    assert_redirected_to gempost_url(Gempost.last)
  end

  test "should show gempost" do
    get gempost_url(@gempost)
    assert_response :success
  end

  test "should get edit" do
    get edit_gempost_url(@gempost)
    assert_response :success
  end

  test "should update gempost" do
    patch gempost_url(@gempost), params: { gempost: { content: @gempost.content, img: @gempost.img, title: @gempost.title } }
    assert_redirected_to gempost_url(@gempost)
  end

  test "should destroy gempost" do
    assert_difference('Gempost.count', -1) do
      delete gempost_url(@gempost)
    end

    assert_redirected_to gemposts_url
  end
end
