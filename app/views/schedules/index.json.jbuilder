json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :first_name, :last_name, :age, :dob, :city, :state, :zipcode, :urgency, :time, :note
  json.url schedule_url(schedule, format: :json)
end
