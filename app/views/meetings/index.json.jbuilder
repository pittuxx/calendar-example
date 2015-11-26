json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :title, :body, :starts, :ends
  json.url meeting_url(meeting, format: :json)
end
