#Nu.nl binnenland headline notifier

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require './scraper_factory'

@name = "Nu.nl Binnenland"
@url = "http://www.nu.nl/binnenland"

def init
  notifier = Notifier.new
  page = ScraperFactory.obtain(@url)

  headline = scrape_latest_headline(page)

  notifier.notify(@name, headline)
end

def scrape_latest_headline(page)
  page.css("span.title-wrapper")[0].text.strip
end

init
