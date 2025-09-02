require "test_helper"

class ClasslistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classlist = classlists(:one)
  end

  test "should get index" do
    get classlists_url
    assert_response :success
  end

  test "should get new" do
    get new_classlist_url
    assert_response :success
  end

  test "should create classlist" do
    assert_difference("Classlist.count") do
      post classlists_url, params: { classlist: { section_id: @classlist.section_id, student_id: @classlist.student_id } }
    end

    assert_redirected_to classlist_url(Classlist.last)
  end

  test "should show classlist" do
    get classlist_url(@classlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_classlist_url(@classlist)
    assert_response :success
  end

  test "should update classlist" do
    patch classlist_url(@classlist), params: { classlist: { section_id: @classlist.section_id, student_id: @classlist.student_id } }
    assert_redirected_to classlist_url(@classlist)
  end

  test "should destroy classlist" do
    assert_difference("Classlist.count", -1) do
      delete classlist_url(@classlist)
    end

    assert_redirected_to classlists_url
  end
end
