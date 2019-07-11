json.extract! user, :id, :uname, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
