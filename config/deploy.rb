# config valid only for Capistrano 3.1
# require 'capistrano/ext/multistage'
lock '3.10.1'

set :stages, ["production"]
set :default_stage, "production"
set :ssh_options, {:forward_agent => true}
set :branch, :master

set :application, 'capistrano_example'
set :repo_url, 'git@github.com:chtn0921/capistrano-example.git'
set :user, "chtn0921"

set :linked_dirs, %w(my_shared_directory)

namespace :deploy do


    desc 'Print The Server Name'
    task :print_server_name do
      on roles(:app), in: :groups, limit:1 do
        execute "hostname"
      end
    end

end

after "deploy:updated", "deploy:print_server_name"
