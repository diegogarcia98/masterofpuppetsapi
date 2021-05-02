require 'test_helper'

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get album_index_url
    assert_response :success
  end

  test "should get create" do
    get album_create_url
    assert_response :success
  end

  test "should get show" do
    get album_show_url
    assert_response :success
  end

  test "should get album_artist" do
    get album_album_artist_url
    assert_response :success
  end

  test "should get play_album_tracks" do
    get album_play_album_tracks_url
    assert_response :success
  end

  test "should get delete" do
    get album_delete_url
    assert_response :success
  end

end
