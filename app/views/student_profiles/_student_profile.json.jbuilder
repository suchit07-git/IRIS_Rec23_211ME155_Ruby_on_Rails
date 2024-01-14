json.extract! student_profile, :id, :name, :email_id, :dept, :program, :roll_no, :cgpa, :created_at, :updated_at
json.url student_profile_url(student_profile, format: :json)
