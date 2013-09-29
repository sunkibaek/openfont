json.array!(@fonts) do |font|
  json.extract! font, :name, :family_name, :eot, :woff, :ttf, :svg, :font_type_id
  json.url font_url(font, format: :json)
end
