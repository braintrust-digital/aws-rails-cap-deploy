json.extract! video, :id, :title, :youtube_id, :position, :created_at, :updated_at
json.url video_url(video, format: :json)
