json.extract! project, :id, :project_name, :address, :rvm_list, :gemset, :created_at, :updated_at
json.url project_url(project, format: :json)
