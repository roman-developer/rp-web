json.extract! post, :id, :name, :title, :content, :published_at, :created_at, :updated_at
json.url post_url(post, format: :json)
