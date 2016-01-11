json.array!(@front_runners) do |front_runner|
  json.extract! front_runner, :id, :name, :email, :password_digest, :description, :aasm_state
  json.url front_runner_url(front_runner, format: :json)
end
