class RoomScraper

  def initialize(index_url)
    @doc = Nokogiri::HTML(open(index_url))
    binding.pry
  end

  def rows
    @rows ||= @doc.search("div.content ul.rows p.result-info")
  end
  # def scrape_time
  #   @doc.search("p.result-info time")
  # end

end
