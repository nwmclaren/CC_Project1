require("minitest/autorun")
require("minitest/rg")
require_relative("../models/artist")

class ArtistTest < MiniTest::Test

  def setup()
    @artist = Artist.new({
      'first_name' => 'Zhou',
      'last_name' => 'Chunya'
      })
  end

  def test_artist_first_name()
    assert_equal("Zhou",@artist.first_name)
  end

  def test_artist_last_name()
    assert_equal("Chunya",@artist.last_name)
  end

end
