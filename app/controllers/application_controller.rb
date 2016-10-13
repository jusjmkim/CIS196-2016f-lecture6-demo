require 'sinatra'

class ApplicationController < Sinatra::Base
  set :views, proc { File.join(root, '../views') }

  get '/' do
    'Hello, world!'
  end

  get '/hi' do
    'Hi'
  end

  get '/index' do
    erb :'index.html'
  end
end