# config valid only for current version of Capistrano
lock "3.9.1"

set :application, "my_shopify_app"
set :repo_url, "git@example.com:me/my_repo.git"

# Default branch is :master
 ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/html/workspace/my_shopify_app"

# Default value for :format is :airbrussh.
 set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
 set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
 set :pty, true

# Default value for :linked_files is []
 append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
 append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
 set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }


set :scm_passphrase, "password"
set :use_sudo, false
set :rails_env, "production"
set :deploy_via, :copy
set :ssh_options, { :forward_agent => true, :port => 4321 }


# Default value for keep_releases is 5
 set :keep_releases, 5

