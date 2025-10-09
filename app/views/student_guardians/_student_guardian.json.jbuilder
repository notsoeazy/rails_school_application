json.extract! student_guardian, :id, :relationship, :student_id, :guardian_id, :created_at, :updated_at
json.url student_guardian_url(student_guardian, format: :json)
