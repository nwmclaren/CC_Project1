require( 'sinatra' )
require( 'sinatra/contrib/all' )
# require( 'pry' )

require_relative( './models/artist.rb' )
require_relative( './models/exhibit.rb' )

also_reload( './models/*' )

get '/gallery' do


  # @artists = Artist.find_all()
  erb( :index )
end

# get '/gallery/visitors' do
#   "Hello World Please"
#   # erb( :visitor_index)
# end

get '/gallery/visitors/' do
  "Hello World"
end
