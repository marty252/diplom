json.extract! journal, :id, :name, :publishing_house, :country, :science_index, :created_at, :updated_at
json.url journal_url(journal, format: :json)