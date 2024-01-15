json.extract! student_registration, :id, :course_code, :student_name, :created_at, :updated_at
json.url student_registration_url(student_registration, format: :json)
