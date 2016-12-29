# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'resource-center'
set :repo_url, 'ssh://git@gitlab.fslola.cn:8011/it/resource-center.git'

set :deploy_to, '/rails_apps/resource-center'
set :scm, :git

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
#set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/application.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  after :restart, :run_seed_fu do
    on roles(:db) do
      within release_path do
        with rails_env: fetch(:stage) do
          execute :rake, 'db:seed_fu'
        end
      end
    end
  end
end
