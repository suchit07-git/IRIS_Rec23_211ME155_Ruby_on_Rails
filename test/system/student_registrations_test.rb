require "application_system_test_case"

class StudentRegistrationsTest < ApplicationSystemTestCase
  setup do
    @student_registration = student_registrations(:one)
  end

  test "visiting the index" do
    visit student_registrations_url
    assert_selector "h1", text: "Student registrations"
  end

  test "should create student registration" do
    visit student_registrations_url
    click_on "New student registration"

    fill_in "Course code", with: @student_registration.course_code
    fill_in "Student name", with: @student_registration.student_name
    click_on "Create Student registration"

    assert_text "Student registration was successfully created"
    click_on "Back"
  end

  test "should update Student registration" do
    visit student_registration_url(@student_registration)
    click_on "Edit this student registration", match: :first

    fill_in "Course code", with: @student_registration.course_code
    fill_in "Student name", with: @student_registration.student_name
    click_on "Update Student registration"

    assert_text "Student registration was successfully updated"
    click_on "Back"
  end

  test "should destroy Student registration" do
    visit student_registration_url(@student_registration)
    click_on "Destroy this student registration", match: :first

    assert_text "Student registration was successfully destroyed"
  end
end
