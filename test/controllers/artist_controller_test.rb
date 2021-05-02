require 'test_helper'

class ArtistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artist_index_url
    assert_response :success
  end

  test "should get create" do
    get artist_create_url
    assert_response :success
  end

  test "should get show" do
    get artist_show_url
    assert_response :success
  end

  test "should get play_artist_tracks" do
    get artist_play_artist_tracks_url
    assert_response :success
  end

  test "should get delete" do
    get artist_delete_url
    assert_response :success
  end

  test "should get method_not_allowed" do
    get artist_method_not_allowed_url
    assert_response :success
  end

end
