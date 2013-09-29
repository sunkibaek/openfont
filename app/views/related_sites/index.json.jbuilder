json.array!(@related_sites) do |related_site|
  json.extract! related_site, :name, :description
  json.url related_site_url(related_site, format: :json)
end
