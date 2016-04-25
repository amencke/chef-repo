# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

organization_base_name = "devops-pro"
require 'grit'
repository = Grit::Repo.new(Dir.pwd)
current_branch = Grit::Head.current(repository).name
organization = organization_base_name 
organization << "-#{current_branch}" unless current_branch == 'master'
chef_server_url "https://api.chef.io/organizations/#{organization}"

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "amencke"
client_key               "#{current_dir}/.chef/amencke.pem"
validation_client_name   "#{organization}-validator"
validation_key           "#{current_dir}/.chef/#{organization}-validator.pem"
cookbook_path            ["#{current_dir}/cookbooks"]
