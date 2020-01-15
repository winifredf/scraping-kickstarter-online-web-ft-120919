require 'nokogiri'

# require libraries/modules here

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  
    projects = {}
  
  end

  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
  end
 
  # return the projects hash
  projects
end