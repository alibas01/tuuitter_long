json.extract! post, :id, :postid, :title, :post, :tags, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
