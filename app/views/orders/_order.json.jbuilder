json.extract! order, :id, :user_id, :product_id, :profile_id, :delivery_date, :delivery_comment, :created_at, :updated_at
json.url order_url(order, format: :json)
