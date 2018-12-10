require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = File.read(index_url)
    students = Nokogiri::HTML(html)

    # binding.pry
    students.css("div.student-card").map do |student|
      {
        name: student.css("a div h4.student-name").text,
        location: student.css("a div p.student-location").text,
        profile_url: student.css("a").attribute("href").value
      }
      # binding.pry
    end
  end

  def self.scrape_profile_page(profile_url)
    html = File.read(profile_url)
    profile_page = Nokogiri::HTML(html)
    binding.pry

    #use conditions to check if there are sources on the page
    profile_page.css("").map do |profile|
      {
      linkedin: ,
      github: ,
      blog: ,

      }
    end
  end

end
