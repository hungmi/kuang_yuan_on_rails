lock '3.6.1'

set :application, 'kuang_yuan_on_rails'
set :repo_url, 'git@github.com:hungmi/kuang_yuan_on_rails.git' # Edit this to match your repository
set :branch, :master
set :deploy_to, '/home/deploy/railsapp'
set :pty, true
set :linked_files, %w{config/database.yml config/application.yml config/secrets.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :bundle_binstubs, nil
set :keep_releases, 5
set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.3.3' # Edit this if you are using MRI Ruby

set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"    #accept array for multi-bind
set :puma_conf, "#{shared_path}/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_error.log"
set :puma_error_log, "#{shared_path}/log/puma_access.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 16]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :puma_preload_app, false

# Whenever is cron job scheduler
# set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

# set :delayed_job_workers, 1
# set :delayed_job_prefix, 'products'
# set :delayed_job_queues, ['product_magics']
# set :delayed_job_roles, [:app, :background]
# after 'deploy:published', 'delayed_job:restart' do
#   invoke 'delayed_job:restart'
# end

set :pty,  false