require 'test_helper'

class RoomEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_evaluation = room_evaluations(:one)
  end

  test "should get index" do
    get room_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_room_evaluation_url
    assert_response :success
  end

  test "should create room_evaluation" do
    assert_difference('RoomEvaluation.count') do
      post room_evaluations_url, params: { room_evaluation: { study_room_id: @room_evaluation.study_room_id, user_id: @room_evaluation.user_id } }
    end

    assert_redirected_to room_evaluation_url(RoomEvaluation.last)
  end

  test "should show room_evaluation" do
    get room_evaluation_url(@room_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_evaluation_url(@room_evaluation)
    assert_response :success
  end

  test "should update room_evaluation" do
    patch room_evaluation_url(@room_evaluation), params: { room_evaluation: { study_room_id: @room_evaluation.study_room_id, user_id: @room_evaluation.user_id } }
    assert_redirected_to room_evaluation_url(@room_evaluation)
  end

  test "should destroy room_evaluation" do
    assert_difference('RoomEvaluation.count', -1) do
      delete room_evaluation_url(@room_evaluation)
    end

    assert_redirected_to room_evaluations_url
  end
end
