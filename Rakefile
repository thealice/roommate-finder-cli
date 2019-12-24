require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_rooms do
  # instantiate a scraper, then have it find new rooms
  nyc_scraper = RoomScraper.new('https://newyork.craigslist.org/search/roo')
  # nyc_scraper.call
  # after this method call i should be able to say Room.all and have rooms there
end
