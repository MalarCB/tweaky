json.array!(@products) do |product|
  json.extract! product, :id, :name, :imagename, :url, :prixvente, :prixnet, :commission, :stock, :likes, :downloads, :tags, :status
  json.url product_url(product, format: :json)
end
