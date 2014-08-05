node[:deploy].each do |application, deploy|
  deploy = node[:deploy][application]
  execute 'bower install -F' do
    cwd ::File.join(deploy[:deploy_to], 'current')
    user deploy[:user]
    group deploy[:group]
    environment ({'HOME' => '/home/deploy'})
  end
end