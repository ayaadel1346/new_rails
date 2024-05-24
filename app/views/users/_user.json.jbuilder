json.extract! user, :id, :name, :DOB, :email, :phone_number,:address, :created_at, :updated_at
json.url user_url(user, format: :json)
