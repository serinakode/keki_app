json.extract! product, :id, :seller_id, :product_name, :description, :price, :image_data, :quantity_available, :no_longer_selling, :created_at, :updated_at
json.url product_url(product, format: :json)
