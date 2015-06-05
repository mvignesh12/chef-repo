current_dir = File.dirname(__FILE__)
  user = ENV['OPSCODE_USER'] || ENV['USER']
  node_name                "admin"
  client_key               "#{current_dir}/admin.pem"
  validation_client_name   "cognizant-validator"
  validation_key           "#{current_dir}/cognizant-validator.pem"
  chef_server_url          "https://chef/organizations/cognizant"
  syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntax_check_cache"
  cookbook_path            ["#{current_dir}/../cookbooks"]
  cookbook_copyright "Vismi Technologies"
  cookbook_license "apachev2"
  cookbook_email "vibin@vismitech.com"
  knife[:editor] = '"C:\Program Files\Sublime Text 3\sublime_text.exe --wait"'