require 'test_helper'

class StudyGroupUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_group_user = study_group_users(:one)
  end

  test "should get index" do
    get study_group_users_url
    assert_response :success
  end

  test "should get new" do
    get new_study_group_user_url
    assert_response :success
  end

  test "should create study_group_user" do
    assert_difference('StudyGroupUser.count') do
      post study_group_users_url, params: { study_group_user: {  } }
    end

    assert_redirected_to study_group_user_url(StudyGroupUser.last)
  end

  test "should show study_group_user" do
    get study_group_user_url(@study_group_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_group_user_url(@study_group_user)
    assert_response :success
  end

  test "should update study_group_user" do
    patch study_group_user_url(@study_group_user), params: { study_group_user: {  } }
    assert_redirected_to study_group_user_url(@study_group_user)
  end

  test "should destroy study_group_user" do
    assert_difference('StudyGroupUser.count', -1) do
      delete study_group_user_url(@study_group_user)
    end

    assert_redirected_to study_group_users_url
  end
end
