json.array!(@authors) do |author|
  json.extract! author, :id, :name, :dob, :gender
  json.url author_url(author, format: :json)
end
