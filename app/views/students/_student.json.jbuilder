json.extract! student, :id, :name, :year_level, :program, :department_id, :created_at, :updated_at
json.url student_url(student, format: :json)
