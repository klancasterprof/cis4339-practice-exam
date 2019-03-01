json.array!(@sales_items) do |sales_item|
  json.extract! sales_item, :id, :name, :category_id, :price
  json.url sales_item_url(sales_item, format: :json)
end
