require 'bundler'
Bundler.require(:default, :development)
require_relative 'database'

namespace :db do
  desc 'Create the database'
  task :create do
    require 'sqlite3'
    SQLite3::Database.new 'db/development.sqlite3'
  end

  desc 'Run database migrations'
  task :migrate do
    require_relative 'database'
    ActiveRecord::Tasks::DatabaseTasks.migrate
  end

  desc 'Seed the database with example data'
  task :seed do
    require_relative 'database'
    load File.expand_path('../db/seeds.rb', __FILE__)
  end

  desc 'Drop the database'
  task :drop do
    rm 'db/development.sqlite3', force: true
  end
end

