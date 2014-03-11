json.array!(@preferences) do |preference|
  json.extract! preference, :id, :email, :sports, :concert, :baseball
  json.url preference_url(preference, format: :json)
end
