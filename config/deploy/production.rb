set :user, 'deploy'
server "alfa", :app, :web, :db, :primary => true

set :rails_env, 'production'
set :passenger_port, 3062
