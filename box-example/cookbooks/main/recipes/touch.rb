execute 'touch file' do
  command 'touch ~/chef_provisioned'
  ignore_failure true
  not_if { ::File.exists?('~/chef_provisioned') }
  action :run
end
