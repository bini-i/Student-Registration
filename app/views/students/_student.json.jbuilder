json.extract! student, :id, :first_name, :father_name, :last_name, :department_id, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
