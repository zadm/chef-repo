# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "zdamene"
client_key               "#{current_dir}/zdamene.pem"
validation_client_name   "st-validator"
validation_key           "#{current_dir}/st-validator.pem"
chef_server_url          "https://chef-server/organizations/st"
cookbook_path            ["#{current_dir}/../cookbooks"]
