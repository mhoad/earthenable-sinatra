### change APP_NAME and REPO ###
### Also replace example.com with your domain, it requires DNS setup, atleast a local entry in ssh-config or hosts file
require 'rake/remote_task'
set :domain, '104.236.163.43'
set :app_name, 'EarthEnable'
set :repo, 'ssh://git@github.com:mhoad/earthenable-sinatra.git'

namespace :deploy do

  desc "Server setup"
  remote_task :setup do
    puts "setting up the server for deployment......"
    run "mkdir #{app_name} && cd #{app_name} && git init && git remote add origin #{repo}"
    puts ".....setup completed successfully."
  end

  desc "deploy to server"
  remote_task :server do
    puts "deploying to the server......."
    run "cd #{app_name} && git pull origin master"
    puts ".....deployed successfully."
  end

end

desc "Deploy to the server"
task :deploy => ["deploy:server"]