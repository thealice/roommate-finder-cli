class RoomScraper

  def initialize(index_url)
    @doc = Nokogiri::HTML(open(index_url))
    binding.pry
  end
  def call
    rows.each do |row, doc|
      scraper_row
    end
  end

private
  def rows
    @rows ||= @doc.search("div.content ul.rows p.result-info")
  end

  def scrape_row(row)
    {
      :date_created => row.search("time").text,
      :title => row.search("a.hdrlnk").text,
      :url => row.search("a.hdrlnk").attribute("href").text,
      :price => row.search("span.result-price").text
    }
  end



end
