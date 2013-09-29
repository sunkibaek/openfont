json.array!(@font_types) do |font_type|
  json.extract! font_type, :name
  json.url font_type_url(font_type, format: :json)
end
