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
