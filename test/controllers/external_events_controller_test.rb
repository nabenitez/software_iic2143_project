require 'test_helper'

class ExternalEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external_event = external_events(:one)
  end

  test "should get index" do
    get external_events_url
    assert_response :success
  end

  test "should get new" do
    get new_external_event_url
    assert_response :success
  end

  test "should create external_event" do
    assert_difference('ExternalEvent.count') do
      post external_events_url, params: { external_event: { end: @external_event.end, start: @external_event.start } }
    end

    assert_redirected_to external_event_url(ExternalEvent.last)
  end

  test "should show external_event" do
    get external_event_url(@external_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_external_event_url(@external_event)
    assert_response :success
  end

  test "should update external_event" do
    patch external_event_url(@external_event), params: { external_event: { end: @external_event.end, start: @external_event.start } }
    assert_redirected_to external_event_url(@external_event)
  end

  test "should destroy external_event" do
    assert_difference('ExternalEvent.count', -1) do
      delete external_event_url(@external_event)
    end

    assert_redirected_to external_events_url
  end
end
