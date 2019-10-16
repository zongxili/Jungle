json.extract! myblog, :id, :created_at, :updated_at
json.url myblog_url(myblog, format: :json)