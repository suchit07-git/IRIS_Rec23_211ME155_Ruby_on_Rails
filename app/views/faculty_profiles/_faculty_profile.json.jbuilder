json.extract! faculty_profile, :id, :name, :email_id, :dept, :staff_id, :created_at, :updated_at
json.url faculty_profile_url(faculty_profile, format: :json)
