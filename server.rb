module App

  class Server < Sinatra::Base
    set :method_overide, true
    enable :sessions

  end
end 