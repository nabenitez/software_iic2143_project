json.extract! note, :id, :title, :content, :description, :reputation_score, :created_at, :updated_at
json.url note_url(note, format: :json)
