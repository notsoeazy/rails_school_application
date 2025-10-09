require "application_system_test_case"

class GuardiansTest < ApplicationSystemTestCase
  setup do
    @guardian = guardians(:one)
  end

  test "visiting the index" do
    visit guardians_url
    assert_selector "h1", text: "Guardians"
  end

  test "should create guardian" do
    visit guardians_url
    click_on "New guardian"

    fill_in "Contact number", with: @guardian.contact_number
    fill_in "Email address", with: @guardian.email_address
    fill_in "Name", with: @guardian.name
    fill_in "Number of students", with: @guardian.number_of_students
    click_on "Create Guardian"

    assert_text "Guardian was successfully created"
    click_on "Back"
  end

  test "should update Guardian" do
    visit guardian_url(@guardian)
    click_on "Edit this guardian", match: :first

    fill_in "Contact number", with: @guardian.contact_number
    fill_in "Email address", with: @guardian.email_address
    fill_in "Name", with: @guardian.name
    fill_in "Number of students", with: @guardian.number_of_students
    click_on "Update Guardian"

    assert_text "Guardian was successfully updated"
    click_on "Back"
  end

  test "should destroy Guardian" do
    visit guardian_url(@guardian)
    click_on "Destroy this guardian", match: :first

    assert_text "Guardian was successfully destroyed"
  end
end
