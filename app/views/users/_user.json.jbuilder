json.extract! user, :id, :name, :gender, :phone_number, :created_at, :updated_at
json.url user_url(user, format: :json)
