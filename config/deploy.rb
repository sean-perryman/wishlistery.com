set :application, 'wishlistery.com'
set :scm, :git
set :repo_url, 'https://github.com/sean-perryman/wishlistery.com.git'
set :deploy_to, "/home/deployer/apps/wishlistery.com"
set :pty, true
set :format, :pretty
set :rails_env, "production"
set :user, "deployer"

task :restart do
  on roles(:app), in: :sequence, wait: 1 do
     execute "sudo /etc/init.d/nginx restart"
  end
end

after 'deploy:publishing', 'deploy:restart'