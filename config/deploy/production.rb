# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
set :stage, :production
role :app, %w{deployer@104.131.128.127}
role :web, %w{deployer@104.131.128.127}
role :db,  %w{deployer@104.131.128.127}

# Define server(s)
server '104.131.128.127', user: 'deployer', roles: %w{web}

# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: false,
    auth_methods: %w(password),
    password: 'Fuckyou1youfuck!',
    user: 'deployer',
}