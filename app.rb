require 'sinatra'
require 'sinatra/activerecord'
require 'bundler'

Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

set :database, "sqlite3:///student.db"

module Blog 

  class App < Sinatra::Base

    get '/' do 
      @students = Student.all
      erb :index
    end

  end

end