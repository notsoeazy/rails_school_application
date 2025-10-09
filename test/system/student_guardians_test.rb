require "application_system_test_case"

class StudentGuardiansTest < ApplicationSystemTestCase
  setup do
    @student_guardian = student_guardians(:one)
  end

  test "visiting the index" do
    visit student_guardians_url
    assert_selector "h1", text: "Student guardians"
  end

  test "should create student guardian" do
    visit student_guardians_url
    click_on "New student guardian"

    fill_in "Guardian", with: @student_guardian.guardian_id
    fill_in "Relationship", with: @student_guardian.relationship
    fill_in "Student", with: @student_guardian.student_id
    click_on "Create Student guardian"

    assert_text "Student guardian was successfully created"
    click_on "Back"
  end

  test "should update Student guardian" do
    visit student_guardian_url(@student_guardian)
    click_on "Edit this student guardian", match: :first

    fill_in "Guardian", with: @student_guardian.guardian_id
    fill_in "Relationship", with: @student_guardian.relationship
    fill_in "Student", with: @student_guardian.student_id
    click_on "Update Student guardian"

    assert_text "Student guardian was successfully updated"
    click_on "Back"
  end

  test "should destroy Student guardian" do
    visit student_guardian_url(@student_guardian)
    click_on "Destroy this student guardian", match: :first

    assert_text "Student guardian was successfully destroyed"
  end
end
