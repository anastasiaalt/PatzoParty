require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'db/themeparties.sqlite3'
)

Dir.glob("models/*.rb").each do |path|
  # binding.pry
  require_relative "../#{path}"
end 

