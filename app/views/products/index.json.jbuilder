json.array!(@products) do |product|
  json.extract! product, :id, :title, :image1, :image2, :image3, :catch_copy, :concept
  json.url product_url(product, format: :json)
end
