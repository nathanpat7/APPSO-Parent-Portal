json.extract! member, :id, :memID, :name, :email, :officer, :notes, :created_at, :updated_at
json.url member_url(member, format: :json)
