require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "should create teacher" do
    visit teachers_url
    click_on "New teacher"

    fill_in "Department", with: @teacher.department_id
    fill_in "Email", with: @teacher.email
    fill_in "Name", with: @teacher.name
    fill_in "Specialization", with: @teacher.specialization
    fill_in "Status", with: @teacher.status
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "should update Teacher" do
    visit teacher_url(@teacher)
    click_on "Edit this teacher", match: :first

    fill_in "Department", with: @teacher.department_id
    fill_in "Email", with: @teacher.email
    fill_in "Name", with: @teacher.name
    fill_in "Specialization", with: @teacher.specialization
    fill_in "Status", with: @teacher.status
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher" do
    visit teacher_url(@teacher)
    click_on "Destroy this teacher", match: :first

    assert_text "Teacher was successfully destroyed"
  end
end
