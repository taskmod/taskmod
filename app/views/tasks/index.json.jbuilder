json.array!(@tasks) do |task|
  json.extract! task, :id, :description, :status, :category_id, :partner_id
  json.url task_url(task, format: :json)
end
