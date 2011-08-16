set :user, 'deploy'
server "rackspace", :app, :web, :db, :primary => true

set :rails_env, 'development'
set :passenger_port, 3071
