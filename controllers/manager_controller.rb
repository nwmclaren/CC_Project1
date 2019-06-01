require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist.rb' )
require_relative( '../models/exhibit.rb' )
also_reload( '../models/*' )

get '/gallery/managers/' do
   erb( :manager_index)
end
