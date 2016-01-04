require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get albums" do
    get :albums
    assert_response :success
  end

  test "should get artists" do
    get :artists
    assert_response :success
  end

  test "should get songs" do
    get :songs
    assert_response :success
  end

  test "should get favorite_albums" do
    get :favorite_albums
    assert_response :success
  end

  test "should get favorite_songs" do
    get :favorite_songs
    assert_response :success
  end

  test "should get favorite_artistes" do
    get :favorite_artistes
    assert_response :success
  end

  test "should get user_login" do
    get :user_login
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
