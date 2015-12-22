if ENV['RACK_ENV'] != 'production'
  require "pry"
end

require "sinatra"
require "bcrypt"

require_relative "db/config"
require_relative "server"

run App::Server