module App

  class Server < Sinatra::Base
    set :method_overide, true
    enable :sessions

  get "/" do
    @author = Author.find(session[:author_id]) if session[:author_id]
    @editor = Editor.find(session[:editor_id]) if session[:editor_id]
    erb :index
  end

  post "/sessions" do
    author = Author.find_by({name: params[:name]}).try(:authenticate, params[:password])
    editor = Editor.find_by({name: params[:name]}).try(:authenticate, params[:password])
    if author
      session[:author_id] = author.id
      redirect to "/"
    elsif
      session[:editor_id] = editor.id
      redirect to "/"
    else
      redirect to "/login"
    end
  end  

  get '/login' do
    erb :login
  end

  get '/new_author' do
    erb :new_author
  end

  post '/new_author' do
    "Add new author to authors table"
    redirect to "/"
  end

  get '/new_editor' do
    erb :new_editor
  end

  post '/new_editor' do
    "Add new editor to editors table"
    redirect to "/"
  end

  end 
end 