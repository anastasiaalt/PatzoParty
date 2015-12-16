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

  delete "/sessions" do
    session[:author_id] = nil
    session[:editor_id] = nil
    redirect to "/" 
  end  

  get '/new_author' do
    erb :new_author
  end

  post '/new_author' do
    @author = Author.create(name1: params["name1"], name2: params["name2"], location: params["location"], img_url: params["img_url"], password: params["password"], password_confirmation: params["password_confirmation"])
    redirect to "/"
  end

  get '/authors' do
    @authors = Author.all
    erb :authors
  end

  get '/new_editor' do
    erb :new_editor
  end

  post '/new_editor' do
    @editor = Editor.create(name1: params["name1"], name2: params["name2"], location: params["location"], img_url: params["img_url"], password: params["password"], password_confirmation: params["password_confirmation"])
    redirect to "/"
  end

  get '/editors' do
    @editors = Editor.all
    erb :editors
  end

  get '/login' do
    erb :login
  end

  end 
end 