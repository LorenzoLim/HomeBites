json.extract! dish, :id, :name, :cuisine, :user_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
