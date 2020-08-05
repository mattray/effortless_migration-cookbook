hab_sup 'default' do
  license 'accept'
  auto_update true
  event_stream_application 'effortless'
  event_stream_environment 'home'
  event_stream_site 'home'
  event_stream_url 'roberto.bottlebru.sh:4222'
  event_stream_token 'mZ7HwczDoFkIljIQvhFiE22YRO4='
  event_stream_cert '/etc/chef/trusted_certs/roberto_bottlebru_sh.crt'
end

hab_service 'mattray/effortless-config-base' do
  channel 'unstable'
  strategy 'at-once'
  topology 'standalone'
  update_condition 'track-channel'
end

hab_config 'effortless-config-base.default' do
  config({
          ssl_verify_mode: ":verify_none",
          chef_license: {
                         acceptance: 'accept',
                        },
          automate: {
                     enable: true,
                     server_url: 'https://roberto.bottlebru.sh/data-collector/v0/',
                     token: 'mZ7HwczDoFkIljIQvhFiE22YRO4=',
                     chef_guid: node['chef_guid'],
                    },
         })
end
