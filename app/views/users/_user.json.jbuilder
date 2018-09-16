json.extract! user, :id, :name, :birthday, :address, :gender, :phone, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
