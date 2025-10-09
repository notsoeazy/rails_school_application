require "test_helper"

class StudentGuardiansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_guardian = student_guardians(:one)
  end

  test "should get index" do
    get student_guardians_url
    assert_response :success
  end

  test "should get new" do
    get new_student_guardian_url
    assert_response :success
  end

  test "should create student_guardian" do
    assert_difference("StudentGuardian.count") do
      post student_guardians_url, params: { student_guardian: { guardian_id: @student_guardian.guardian_id, relationship: @student_guardian.relationship, student_id: @student_guardian.student_id } }
    end

    assert_redirected_to student_guardian_url(StudentGuardian.last)
  end

  test "should show student_guardian" do
    get student_guardian_url(@student_guardian)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_guardian_url(@student_guardian)
    assert_response :success
  end

  test "should update student_guardian" do
    patch student_guardian_url(@student_guardian), params: { student_guardian: { guardian_id: @student_guardian.guardian_id, relationship: @student_guardian.relationship, student_id: @student_guardian.student_id } }
    assert_redirected_to student_guardian_url(@student_guardian)
  end

  test "should destroy student_guardian" do
    assert_difference("StudentGuardian.count", -1) do
      delete student_guardian_url(@student_guardian)
    end

    assert_redirected_to student_guardians_url
  end
end
