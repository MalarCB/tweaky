json.array!(@headers) do |header|
  json.extract! header, :id, :heading, :imgurl, :status, :detailurl
  json.url header_url(header, format: :json)
end
