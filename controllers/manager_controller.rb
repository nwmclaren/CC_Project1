require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist.rb' )
require_relative( '../models/exhibit.rb' )
also_reload( '../models/*' )
#require( 'pry' )

get '/gallery/managers/' do
   erb( :manager_index)
end

get '/gallery/manager/artists/' do
  @artists = Artist.find_all()
  erb( :artist_all )
end

get '/gallery/manager/artists/new' do
  erb( :artist_new )
end

post '/gallery/manager/artists/add' do
  @artist = Artist.new( params )
  @artist.save()
  erb( :artist_saved )
end

# get '/gallery/manager/artists/:id/delete' do
#   "Hello World wee man"
# end

post '/gallery/manager/artists/:id/delete' do
  artist = Artist.find_by_id( params[:id] )
  artist.delete()
  redirect to '/gallery/manager/artists/'
end

get '/gallery/manager/exhibits' do
  @exhibits = Exhibit.find_all()
  erb( :exhibit_all )
end

post '/gallery/manager/exhibits/add' do
  @exhibit = Exhibit.new( params )
  @exhibit.save()
  erb( :exhibit_saved )
end

get '/gallery/manager/exhibits/new' do
  @artists = Artist.find_all()
  erb( :exhibit_new )
end

post '/gallery/manager/exhibits/:id/delete' do
  exhibit = Exhibit.find_by_id( params[:id] )
  exhibit.delete()
  redirect to '/gallery/manager/exhibits'
end

get '/gallery/manager/exhibits/:id/edit' do
  @artists = Artist.find_all()
  @exhibit = Exhibit.find_by_id( params[:id] )
  erb( :exhibit_edit )
end

post '/gallery/manager/exhibits/assign' do
  @exhibit = Exhibit.new( params )
  @exhibit.save()
  erb( :exhibit_assigned )
end

post '/gallery/manager/exhibits/:id' do
  exhibit = Exhibit.new(params)
  exhibit.update()
  erb( :exhibit_updated )
end

get '/gallery/manager/assign' do
  @artists = Artist.find_all()
#  @exhibits = Exhibit.find_all()
  erb( :assign_exhibit )
end

# post '/gallery/manager/exhibits/assign' do
#   @exhibit = Exhibit.new( params )
#   @exhibit.save()
#   erb( :exhibit_assigned )
# end
