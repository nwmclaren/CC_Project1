require("minitest/autorun")
require("minitest/rg")
require_relative("../models/exhibit")
require_relative("../models/artist")

class ArtistTest < MiniTest::Test

  def setup()
    @artist = Artist.new({
      'id' => 1,
      'first_name' => 'Zhou',
      'last_name' => 'Chunya'
      })

    @exhibit = Exhibit.new ({
      'exhibit_name' => 'Green Dog',
      'category' => 'contempary',
      'artist_id' => @artist.id
    })

  end

  def test_exhibit_name()
    assert_equal("Green Dog",@exhibit.exhibit_name)
  end

  def test_exhibit_category()
    assert_equal("contempary",@exhibit.category)
  end

  def test_exhibit_artist_id
    assert_equal(1,@exhibit.artist_id)
  end

end
