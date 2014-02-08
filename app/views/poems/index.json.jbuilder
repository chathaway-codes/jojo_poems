json.array!(@poems) do |poem|
  json.extract! poem, :id, :user_id, :author_id, :title, :markup, :html, :license_id
  json.url poem_url(poem, format: :json)
end
