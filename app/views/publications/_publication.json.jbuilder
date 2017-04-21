json.extract! publication, :id, :title, :type, :organisation, :year, :rints, :journal_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)