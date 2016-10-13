require 'bundler'
Bundler.require(:default, :development)

require './app/controllers/application_controller'
Dir.glob('./app/{controllers,models}/*.rb').each { |file| require file }
require_relative 'database'

use UsersController
run ApplicationController
