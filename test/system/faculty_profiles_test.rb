require "application_system_test_case"

class FacultyProfilesTest < ApplicationSystemTestCase
  setup do
    @faculty_profile = faculty_profiles(:one)
  end

  test "visiting the index" do
    visit faculty_profiles_url
    assert_selector "h1", text: "Faculty profiles"
  end

  test "should create faculty profile" do
    visit faculty_profiles_url
    click_on "New faculty profile"

    fill_in "Dept", with: @faculty_profile.dept
    fill_in "Email", with: @faculty_profile.email_id
    fill_in "Name", with: @faculty_profile.name
    fill_in "Staff", with: @faculty_profile.staff_id
    click_on "Create Faculty profile"

    assert_text "Faculty profile was successfully created"
    click_on "Back"
  end

  test "should update Faculty profile" do
    visit faculty_profile_url(@faculty_profile)
    click_on "Edit this faculty profile", match: :first

    fill_in "Dept", with: @faculty_profile.dept
    fill_in "Email", with: @faculty_profile.email_id
    fill_in "Name", with: @faculty_profile.name
    fill_in "Staff", with: @faculty_profile.staff_id
    click_on "Update Faculty profile"

    assert_text "Faculty profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Faculty profile" do
    visit faculty_profile_url(@faculty_profile)
    click_on "Destroy this faculty profile", match: :first

    assert_text "Faculty profile was successfully destroyed"
  end
end
