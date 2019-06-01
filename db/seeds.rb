require_relative('../models/artist')
require_relative('../models/exhibit')

#require('pry')

Exhibit.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'first_name' => 'Andy',
  'last_name' => 'Worhol'
})

artist2 = Artist.new({
  'first_name' => 'Cecily',
  'last_name' => 'Brown'
})

artist3 = Artist.new({
  'first_name' => 'Sean',
  'last_name' => 'Scully'
})

artist4 = Artist.new({
  'first_name' => 'Kari',
  'last_name' => 'McLaren'
})

artist1.save()
artist2.save()
artist3.save()
artist4.save()

exhibit1 = Exhibit.new({
  'exhibit_name' => 'Daisy',
  'category' => 'Visual',
  'artist_id' => artist1.id
})

exhibit2 = Exhibit.new({
  'exhibit_name' => 'Pyjama Game',
  'category' => 'Contempary',
  'artist_id' => artist2.id
})

exhibit3 = Exhibit.new({
  'exhibit_name' => 'Yellow Figure',
  'category' => 'Contempary',
  'artist_id' => artist3.id
})

exhibit4 = Exhibit.new({
  'exhibit_name' => 'Sky',
  'category' => 'Visual',
  'artist_id' => artist4.id
})

exhibit5 = Exhibit.new({
  'exhibit_name' => 'Rain Drops',
  'category' => 'Visual',
  'artist_id' => artist4.id
})

exhibit6 = Exhibit.new({
  'exhibit_name' => 'The Poka Dots',
  'category' => 'Visual',
  'artist_id' => artist4.id
})

'The Poka Dots'

# binding.pry

exhibit1.save()
exhibit2.save()
exhibit3.save()
#binding.pry
exhibit4.save()
exhibit5.save()
exhibit6.save()
