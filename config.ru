require "pry"
require "sinatra"
require "bcrypt"

require "db/config"
require_relative "server"

run App::Server