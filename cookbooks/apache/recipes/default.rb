#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, Vismi Technologies
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
package "apache2" do
	action :install
end
service "apache2" do
	action [:enable, :start]
end

cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode "0644"
end