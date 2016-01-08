json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :text, :start_date, :end_date, :project_id
  json.url task_url(task, format: :json)
end
