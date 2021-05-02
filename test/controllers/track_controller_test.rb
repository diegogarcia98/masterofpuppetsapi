require 'test_helper'

class TrackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get track_index_url
    assert_response :success
  end

  test "should get create" do
    get track_create_url
    assert_response :success
  end

  test "should get show" do
    get track_show_url
    assert_response :success
  end

  test "should get tracks_artist" do
    get track_tracks_artist_url
    assert_response :success
  end

  test "should get tracks_album" do
    get track_tracks_album_url
    assert_response :success
  end

  test "should get play_track" do
    get track_play_track_url
    assert_response :success
  end

  test "should get delete" do
    get track_delete_url
    assert_response :success
  end

end
