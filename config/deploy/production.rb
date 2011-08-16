set :user, 'deploy'
server "alfa.knockout.dontexist.org", :app, :web, :db, :primary => true

set :rails_env, 'production'
set :passenger_port, 3062
