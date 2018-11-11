json.extract! gempost, :id, :title, :content, :img, :created_at, :updated_at
json.url gempost_url(gempost, format: :json)
