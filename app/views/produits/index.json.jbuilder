json.array!(@produits) do |produit|
  json.extract! produit, :id, :name, :imagename, :url, :prixvente, :prixnet, :devise, :commission, :stock, :likes, :downloads, :tags, :status
  json.url produit_url(produit, format: :json)
end
