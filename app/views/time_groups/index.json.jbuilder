json.array!(@time_groups) do |time_group|
  json.extract! time_group, :id, :student_name, :month, :day, :total_min
  json.url time_group_url(time_group, format: :json)
end
