require 'blackbook/importer/page_scraper'
require 'fastercsv'

##
# contacts importer for Yahoo!

class Blackbook::Importer::Yahoo < Blackbook::Importer::PageScraper

  ##
  # Matches this importer to an user's name/address

  def =~(options = {})
    options && options[:username] =~ /@yahoo.co(m|\.uk)$/i ? true : false
  end
  
  ##
  # login for Yahoo!

  def login
    page = agent.get('https://login.yahoo.com/config/login_verify2?')
    form = page.forms.first
    form.login = options[:username].split("@").first
    form.passwd = options[:password]
    page = agent.submit(form, form.buttons.first)
    
    if page.body =~ /Invalid ID or password./ || page.body =~ /This ID is not yet taken./
      raise Blackbook::BadCredentialsError, "That username and password was not accepted. Please check them and try again."
    end
    
    true
  end
  
  ##
  # prepare the importer

  def prepare
    login
  end
  
  ##
  # scrape yahoo contacts

  def scrape_contacts
    page = agent.get("http://address.yahoo.com/?1=&VPC=import_export")
    if page.body =~ /To access Yahoo! Address Book\.\.\..*Sign in./m
      raise( Blackbook::BadCredentialsError, "Must be authenticated to access contacts." )
    end
    form = page.forms.last
    csv = agent.submit(form, form.buttons[2]) # third button is Yahoo-format CSV
    
    contact_rows = FasterCSV.parse(csv.body, { :headers => true, :header_converters => :symbol }).inject([]) do |result, row|
      unless !row[:yahoo_id].empty? && options[:username] =~ /^#{row[:yahoo_id]}/
        result << { :name => [row[:first], row[:last]].join(" "), :email => (row[:email] || "#{row[:yahoo_id]}@yahoo.com") } # Assuming @yahoo.com
      end
      result
    end
  end
  
  Blackbook.register(:yahoo, self)
end
