json.extract! event, :id, :eventID, :name, :time, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
