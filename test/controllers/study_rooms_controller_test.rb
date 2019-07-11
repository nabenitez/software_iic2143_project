require 'test_helper'

class StudyRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_room = study_rooms(:one)
  end

  test "should get index" do
    get study_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_study_room_url
    assert_response :success
  end

  test "should create study_room" do
    assert_difference('StudyRoom.count') do
      post study_rooms_url, params: { study_room: { availability: @study_room.availability, available_score: @study_room.available_score, capacity: @study_room.capacity, name: @study_room.name, noise_score: @study_room.noise_score, plug_score: @study_room.plug_score } }
    end

    assert_redirected_to study_room_url(StudyRoom.last)
  end

  test "should show study_room" do
    get study_room_url(@study_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_room_url(@study_room)
    assert_response :success
  end

  test "should update study_room" do
    patch study_room_url(@study_room), params: { study_room: { availability: @study_room.availability, available_score: @study_room.available_score, capacity: @study_room.capacity, name: @study_room.name, noise_score: @study_room.noise_score, plug_score: @study_room.plug_score } }
    assert_redirected_to study_room_url(@study_room)
  end

  test "should destroy study_room" do
    assert_difference('StudyRoom.count', -1) do
      delete study_room_url(@study_room)
    end

    assert_redirected_to study_rooms_url
  end
end
