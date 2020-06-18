require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end
  
  get "/ice_creams" do #show all ice cream flavors
    erb :"ice_creams/index"
  end

  get "/ice_creams/new" do #show a form to add flavor
    erb :"ice_creams/new"
  end

  post "/ice_creams" do #create new flavor
  end

  get "/ice_creams/:id" do #displays ice cream flavor based on ID in URL
    erb :"ice_creams/show"
  end

  get "/ice_creams/:id/edit" do #shows edit form for a particular flavor
    erb :"ice_creams/edit"
  end

  patch "/ice_creams/:id" do #updates flavor
  end

  delete "/ice_creams/:id" do #deletes particular flavor
  end

end
