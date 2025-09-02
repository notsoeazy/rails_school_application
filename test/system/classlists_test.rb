require "application_system_test_case"

class ClasslistsTest < ApplicationSystemTestCase
  setup do
    @classlist = classlists(:one)
  end

  test "visiting the index" do
    visit classlists_url
    assert_selector "h1", text: "Classlists"
  end

  test "should create classlist" do
    visit classlists_url
    click_on "New classlist"

    fill_in "Section", with: @classlist.section_id
    fill_in "Student", with: @classlist.student_id
    click_on "Create Classlist"

    assert_text "Classlist was successfully created"
    click_on "Back"
  end

  test "should update Classlist" do
    visit classlist_url(@classlist)
    click_on "Edit this classlist", match: :first

    fill_in "Section", with: @classlist.section_id
    fill_in "Student", with: @classlist.student_id
    click_on "Update Classlist"

    assert_text "Classlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Classlist" do
    visit classlist_url(@classlist)
    click_on "Destroy this classlist", match: :first

    assert_text "Classlist was successfully destroyed"
  end
end
