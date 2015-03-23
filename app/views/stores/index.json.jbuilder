json.array!(@stores) do |store|
  json.extract! store, :id, :name, :in_stock, :supplier, :delivery_date
  json.url store_url(store, format: :json)
end
