CarrierWave.configure do |config|
  config.storage = :fog

  config.fog_credentials = {
    provider: 'openstack',
    openstack_tenant: "Framgia Picture Show",
    openstack_api_key: "vuld",
    openstack_username: "vuld",
    openstack_auth_url: "http://192.168.1.107:35357/v2.0/tokens"
  }
  config.fog_directory = "framgia-pictures"
  config.fog_public = false
end


