#
# Cookbook Name:: sa-postfix
# Recipe:: default
#

apt_package 'mailutils'

apt_package 'postfix'

node['sa-postfix']['postfix_properties'].each do |a_property|
  lineinfile '/etc/postfix/main.cf' do
    regexp a_property['regexp']
    line   a_property['line']
  end
end
