require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_roooms do
  # instantiate a scraper, then have it find new rooms
  nyc_scraper = RoomScraper.new('https://newyork.craigslist.org/search/sfc/roo')
  nyc_scraper.call
  chicago_scraper = RoomScraper.new('https://chicago.craigslist.org/search/sfc/roo')
  chicago_scraper.call
  sfbay_scraper = RoomScraper.new('https://sfbay.craigslist.org/search/sfc/roo')
  sfbay_scraper.call
  # after this method call i should be able to say Room.all and have rooms there
end
