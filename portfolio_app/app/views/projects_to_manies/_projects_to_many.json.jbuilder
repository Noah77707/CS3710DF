json.extract! projects_to_many, :id, :title, :description, :created_at, :updated_at
json.url projects_to_many_url(projects_to_many, format: :json)
