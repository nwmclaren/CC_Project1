require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist.rb' )
require_relative( '../models/exhibit.rb' )
also_reload( '../models/*' )

get '/gallery/visitors/' do
   erb( :visitor_index)
end

get '/gallery/vistors/all/' do
  @exhibits = Exhibit.find_all()
  erb( :visitor_all )
end

get '/gallery/visitor/exhibits/:id/view' do
  @exhibit = Exhibit.find_by_id( params[:id] )
  erb( :exhibit_show )
end

get '/gallery/vistors/all/artists' do
  @artists = Artist.find_all()
  erb( :artist_all_visitors )
end

get '/gallery/visitors/artists/:id/exhibit' do
  @exhibits = Exhibit.filter_by_artist(params[:id])
  @artist = Artist.find_by_id(params[:id])
  erb( :exhibits_by_artist)
end
