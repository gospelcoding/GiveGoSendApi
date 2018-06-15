

json.user do
  json.call(@user, :id, :name, :email, :prefs)
end