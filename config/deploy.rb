#se://github.com/amolkhanorkar-webonise/Rails/tree/master/Rails_Demo_Assignmentt :user, “Amol Khanorkar”
#set :scm_username, "amolkhanorkar-webonise"
set :application, "post_app"
set :repository,  "https://github.com/amolkhanorkar-webonise/Rails/tree/master/Rails_Demo_Assignment"
set :scm, "git"
set :deploy_to, "/var/www/project"
set :use_sudo, false 
set :ssh_auth_methods, "publickey"
set :ssh_keys, ["/home/webonise/.ssh/id_rsa.pub"]
set :ssh_froward_agent, true
set :user, "webonise"
set :runner, "webonise"  
set :rails_env, "production"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :app, "192.168.0.130:22", {:primary=>true}
role :db, "192.168.0.130:22", {:primary=>true}
role :web, "192.168.0.130"



# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
