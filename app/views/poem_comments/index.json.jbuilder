json.array!(@poem_comments) do |poem_comment|
  json.extract! poem_comment, :id, :poem_id, :user, :start, :end, :markup, :html
  json.url poem_comment_url(poem_comment, format: :json)
end
