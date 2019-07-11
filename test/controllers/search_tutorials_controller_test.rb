require 'test_helper'

class SearchTutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_tutorial = search_tutorials(:one)
  end

  test "should get index" do
    get search_tutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_search_tutorial_url
    assert_response :success
  end

  test "should create search_tutorial" do
    assert_difference('SearchTutorial.count') do
      post search_tutorials_url, params: { search_tutorial: { course: @search_tutorial.course, duration: @search_tutorial.duration, start: @search_tutorial.start } }
    end

    assert_redirected_to search_tutorial_url(SearchTutorial.last)
  end

  test "should show search_tutorial" do
    get search_tutorial_url(@search_tutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_tutorial_url(@search_tutorial)
    assert_response :success
  end

  test "should update search_tutorial" do
    patch search_tutorial_url(@search_tutorial), params: { search_tutorial: { course: @search_tutorial.course, duration: @search_tutorial.duration, start: @search_tutorial.start } }
    assert_redirected_to search_tutorial_url(@search_tutorial)
  end

  test "should destroy search_tutorial" do
    assert_difference('SearchTutorial.count', -1) do
      delete search_tutorial_url(@search_tutorial)
    end

    assert_redirected_to search_tutorials_url
  end
end
