# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mvignesh12"
client_key               "#{current_dir}/mvignesh12.pem"
validation_client_name   "vignesh-validator"
validation_key           "#{current_dir}/vignesh-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/vignesh"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:aws_access_key_id] = "AKIAJF4EJ7YE42MNYP4A"
knife[:aws_secret_access_key] = "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"
