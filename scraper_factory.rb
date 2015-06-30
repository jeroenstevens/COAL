class ScraperFactory
  def self.obtain(url)
    Nokogiri::HTML(open(url))
  end
end
