# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "amencke"
client_key               "#{current_dir}/amencke.pem"
validation_client_name   "devops-pro-validator"
validation_key           "#{current_dir}/devops-pro-validator.pem"
chef_server_url          "https://api.chef.io/organizations/devops-pro"
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright	 "Arthur LTD"
cookbook_license	 "apachev2"
cookbook_email		 "arthur.mencke@gmail.com"


