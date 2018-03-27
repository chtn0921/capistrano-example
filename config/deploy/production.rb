set :user, "deploy"
set :deploy_to, "/var/www"
server "ec2-52-62-173-243.ap-southeast-2.compute.amazonaws.com", roles: [:app, :web, :db], :primary => true
ssh_options = {keys: ["~/.ssh/chetan.pem"], forward_agent: true}