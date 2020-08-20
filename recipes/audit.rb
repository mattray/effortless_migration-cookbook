include_recipe "effortless_migration::default"

hab_service 'mattray/effortless-audit-base' do
  channel 'unstable'
  strategy 'at-once'
  topology 'standalone'
  update_condition 'track-channel'
end

hab_config 'effortless-audit-base.default' do
  config({
          chef_license: {
                         acceptance: 'accept',
                        },
          automate: {
                     enable: true,
                     server_url: 'https://roberto.bottlebru.sh',
                     token: 'mZ7HwczDoFkIljIQvhFiE22YRO4=',
                     environment: 'audit-base',
                     node_uuid: node['chef_guid'],
                    },
         })
end
