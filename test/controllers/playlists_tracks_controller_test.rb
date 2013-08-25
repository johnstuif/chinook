require 'test_helper'

class PlaylistsTracksControllerTest < ActionController::TestCase
  setup do
    @playlists_track = playlists_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playlists_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playlists_track" do
    assert_difference('PlaylistsTrack.count') do
      post :create, playlists_track: { playlist_id: @playlists_track.playlist_id, track_id: @playlists_track.track_id }
    end

    assert_redirected_to playlists_track_path(assigns(:playlists_track))
  end

  test "should show playlists_track" do
    get :show, id: @playlists_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @playlists_track
    assert_response :success
  end

  test "should update playlists_track" do
    patch :update, id: @playlists_track, playlists_track: { playlist_id: @playlists_track.playlist_id, track_id: @playlists_track.track_id }
    assert_redirected_to playlists_track_path(assigns(:playlists_track))
  end

  test "should destroy playlists_track" do
    assert_difference('PlaylistsTrack.count', -1) do
      delete :destroy, id: @playlists_track
    end

    assert_redirected_to playlists_tracks_path
  end
end
