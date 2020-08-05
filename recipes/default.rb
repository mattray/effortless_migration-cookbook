# configures the Habitat Supervisor

hab_sup node['effortless']['hab-sup']['org'] do
  license node['effortless']['hab-sup']['license']
  auto_update node['effortless']['hab-sup']['auto_update']
  event_stream_application node['effortless']['hab-sup']['event_stream_application']
  event_stream_cert node['effortless']['hab-sup']['event_stream_cert']
  event_stream_environment node['effortless']['hab-sup']['event_stream_environment']
  event_stream_site node['effortless']['hab-sup']['event_stream_site']
  event_stream_token node['effortless']['hab-sup']['event_stream_token']
  event_stream_url node['effortless']['hab-sup']['event_stream_url']
end
