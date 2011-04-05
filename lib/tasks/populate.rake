namespace :devise do

  desc 'creating a default user'
  task :setup => ['db:drop', 'db:create', 'db:migrate', 'environment'] do
    user = User.create! do |u|
      u.email = 'dianamiriammora@hotmail.com'
      u.password = '12008265'
      u.password_confirmation = '12008265'
      # u.ensure_authentication_token!
    end
    #user.confirm!
    puts 'New user created!'
    puts 'Email   : ' << user.email
    puts 'Password: ' << user.password    
  end
end
