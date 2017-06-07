json.extract! question, :id, :title, :description, :code, :created_at, :updated_at
json.url question_url(question, format: :json)
