json.array!(@licenses) do |license|
  json.extract! license, :id, :name, :license
  json.url license_url(license, format: :json)
end
