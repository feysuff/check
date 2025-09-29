database_name = "dino-#{DinoApp.environment}"

ActiveRecord::Base.establish_connection(
  adapter:    'postgresql',
  host:       'db',
  database:   'postgres',
  username:   ENV['DB_Username'],
  password:   ENV['DB_Password'],
  port:       ENV['DB_Port']
)
