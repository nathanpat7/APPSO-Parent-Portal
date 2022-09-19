json.extract! question, :id, :questionID, :prompt, :type, :answer, :expected_answer, :page, :index, :created_at, :updated_at
json.url question_url(question, format: :json)
