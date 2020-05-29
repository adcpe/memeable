json.extract! meme, :id, :title, :type, :url_source, :votes_count, :category_id, :created_at, :updated_at
json.url meme_url(meme, format: :json)
