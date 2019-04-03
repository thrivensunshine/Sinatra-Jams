require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/artists/new" do
    # @artist = Artist.new
  erb :new_artist
  end

  post '/artists' do
  @artist = Artist.create(params[:artist])

   redirect to "/artists/#{ @artist.id }"
end
# page with all the artists
  get "/artists" do
    @artists = Artist.all
  erb :index
  end

  #find page for each artists

  get "/artists/:id" do
    @artist = Artist.find(params[:id])
      erb :show_artist
  end



end
