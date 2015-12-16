module App

  class Server < Sinatra::Base
    set :method_overide, true
    enable :sessions

  get "/" do
    @author = Author.find(session[:author_id]) if session[:author_id]
    erb(:index)
  end

  end
end 