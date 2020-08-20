include_recipe "effortless_migration::default"

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
