require "application_system_test_case"

class StudentProfilesTest < ApplicationSystemTestCase
  setup do
    @student_profile = student_profiles(:one)
  end

  test "visiting the index" do
    visit student_profiles_url
    assert_selector "h1", text: "Student profiles"
  end

  test "should create student profile" do
    visit student_profiles_url
    click_on "New student profile"

    fill_in "Cgpa", with: @student_profile.cgpa
    fill_in "Dept", with: @student_profile.dept
    fill_in "Email", with: @student_profile.email_id
    fill_in "Name", with: @student_profile.name
    fill_in "Program", with: @student_profile.program
    fill_in "Roll no", with: @student_profile.roll_no
    click_on "Create Student profile"

    assert_text "Student profile was successfully created"
    click_on "Back"
  end

  test "should update Student profile" do
    visit student_profile_url(@student_profile)
    click_on "Edit this student profile", match: :first

    fill_in "Cgpa", with: @student_profile.cgpa
    fill_in "Dept", with: @student_profile.dept
    fill_in "Email", with: @student_profile.email_id
    fill_in "Name", with: @student_profile.name
    fill_in "Program", with: @student_profile.program
    fill_in "Roll no", with: @student_profile.roll_no
    click_on "Update Student profile"

    assert_text "Student profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Student profile" do
    visit student_profile_url(@student_profile)
    click_on "Destroy this student profile", match: :first

    assert_text "Student profile was successfully destroyed"
  end
end
