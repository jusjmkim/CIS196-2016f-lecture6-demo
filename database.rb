ActiveRecord::Migrator.migrations_paths = [
  File.expand_path('../db/migrate/', __FILE__)
]

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db/development.sqlite3'
)

