module App

  class Server < Sinatra::Base
    set :method_overide, true
    enable :sessions

  get "/" do
    @author = Author.find(session[:author_id]) if session[:author_id]
    @editor = Editor.find(session[:editor_id]) if session[:editor_id]
    erb :index
  end

  post "/author_sessions" do
    author = Author.find_by({name1: params[:name1]}).try(:authenticate, params[:password])
    if author
      session[:author_id] = author.id
      redirect to "/"
    else
      redirect to "/login_author"
    end
  end  

  post "/editor_sessions" do
    editor = Editor.find_by({name1: params[:name1]}).try(:authenticate, params[:password])
    if editor
      session[:editor_id] = editor.id
      redirect to "/"
    else
      redirect to "/login_editor"
    end
  end  

  delete "/author_sessions" do
    session[:author_id] = nil
    redirect to "/" 
  end  

  delete "/editor_sessions" do
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
    redirect to "/" if !session[:author_id]
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
    redirect to "/" if !session[:editor_id]
    @editors = Editor.all
    erb :editors
  end

  get '/login_author' do
    erb :login_author
  end

  get '/login_editor' do
    erb :login_editor
  end

  get '/articles' do
    @articles = Article.all
    erb :articles
  end

  get "/articles/:id" do
    erb :article
  end

  get '/new_article' do
    erb :new_article
  end

  post '/new_article' do
    @article = Article.create(title: params["title"], img_url: params["img_url"], content: params["content"], created_at: DateTime.now, author_id: session[:author_id])
    redirect to "/articles"
  end

  end 
end 