require "test_helper"

class FacultyProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty_profile = faculty_profiles(:one)
  end

  test "should get index" do
    get faculty_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_faculty_profile_url
    assert_response :success
  end

  test "should create faculty_profile" do
    assert_difference("FacultyProfile.count") do
      post faculty_profiles_url, params: { faculty_profile: { dept: @faculty_profile.dept, email_id: @faculty_profile.email_id, name: @faculty_profile.name, staff_id: @faculty_profile.staff_id } }
    end

    assert_redirected_to faculty_profile_url(FacultyProfile.last)
  end

  test "should show faculty_profile" do
    get faculty_profile_url(@faculty_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_faculty_profile_url(@faculty_profile)
    assert_response :success
  end

  test "should update faculty_profile" do
    patch faculty_profile_url(@faculty_profile), params: { faculty_profile: { dept: @faculty_profile.dept, email_id: @faculty_profile.email_id, name: @faculty_profile.name, staff_id: @faculty_profile.staff_id } }
    assert_redirected_to faculty_profile_url(@faculty_profile)
  end

  test "should destroy faculty_profile" do
    assert_difference("FacultyProfile.count", -1) do
      delete faculty_profile_url(@faculty_profile)
    end

    assert_redirected_to faculty_profiles_url
  end
end
