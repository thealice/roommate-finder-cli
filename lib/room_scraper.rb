class RoomScraper
  def initialize(index_url)
    @doc = Nokogiri::HTML(open(index_url))
  end
end
