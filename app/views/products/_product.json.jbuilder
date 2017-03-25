json.extract! product, :id, :title, :description, :price, :saleprice, :reference, :stock, :sale, :created_at, :updated_at
json.url product_url(product, format: :json)
