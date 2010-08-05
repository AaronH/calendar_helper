require 'rails/generators'

class CalendarStylesGenerator < Rails::Generators::Base  
  
  def install_calendar_styles
    calendar_themes_dir = "public/stylesheets/calendar"
    %w(red blue grey).each do |dir|
      copy_file("#{dir}/style.css", "#{calendar_themes_dir}/#{dir}/style.css")
    end
  end
  
  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

end
