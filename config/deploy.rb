set :application, "china"
set :repository,  "git://github.com/matthewrudy/rude-blog.git"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

role :app, "matthewrudy.com"
role :web, "matthewrudy.com"
role :db,  "matthewrudy.com", :primary => true

namespace :deploy do
  task :start do
  end

  task :stop do
  end

  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
