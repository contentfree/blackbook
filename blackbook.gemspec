# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{blackbook}
  s.version = "1.0.9"
  
  s.add_dependency("fastercsv", ">= 1.2.0")
  s.add_dependency("mechanize", ">= 0.9.0")
  
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dave Myron", "Mike Mondragon", "purzelrekate", "jjolma", "bcardarella", "kieranj", "weplay", "and more..."]
  s.date = %q{2009-02-19}
  s.email = %q{dave.myron@contentfree.com}
  s.files = ["CHANGES.markdown", "Manifest.txt", "README.markdown", "VERSION.yml", "lib/blackbook", "lib/blackbook/exporter", "lib/blackbook/exporter/base.rb", "lib/blackbook/exporter/vcf.rb", "lib/blackbook/exporter/xml.rb", "lib/blackbook/importer", "lib/blackbook/importer/aol.rb", "lib/blackbook/importer/base.rb", "lib/blackbook/importer/csv.rb", "lib/blackbook/importer/freenet.rb", "lib/blackbook/importer/gmail.rb", "lib/blackbook/importer/gmx.rb", "lib/blackbook/importer/hotmail.rb", "lib/blackbook/importer/page_scraper.rb", "lib/blackbook/importer/web.de.rb", "lib/blackbook/importer/yahoo.rb", "lib/blackbook.rb", "test/config", "test/config/credentials.yml.example", "test/fixtures", "test/fixtures/aol_application_page.html", "test/fixtures/aol_bad_login_response_stage_3.html", "test/fixtures/aol_contacts.html", "test/fixtures/aol_login_response_stage_1.html", "test/fixtures/aol_login_response_stage_2.html", "test/fixtures/aol_login_response_stage_3.html", "test/fixtures/aol_login_response_stage_4.html", "test/fixtures/aol_new_contacts.html", "test/fixtures/gmail.csv", "test/fixtures/gmail_bad_login_response_stage_2.html", "test/fixtures/gmail_contacts.html", "test/fixtures/gmail_login_response_stage_1.html", "test/fixtures/gmail_login_response_stage_2.html", "test/fixtures/gmail_login_response_stage_2a.html", "test/fixtures/gmail_login_response_stage_3.html", "test/fixtures/gmail_redirect_body.html", "test/fixtures/hotmail_bad_login_response_stage_2.html", "test/fixtures/hotmail_contacts.html", "test/fixtures/hotmail_login_response_stage_1.html", "test/fixtures/hotmail_login_response_stage_2.html", "test/fixtures/hotmail_login_response_stage_3.html", "test/fixtures/hotmail_scrape_first_page.html", "test/fixtures/hotmail_scrape_response_stage_1.html", "test/fixtures/hotmail_scrape_response_stage_2.html", "test/fixtures/hotmail_scrape_response_stage_3.html", "test/fixtures/yahoo_bad_login_response_stage_2.html", "test/fixtures/yahoo_contacts.csv", "test/fixtures/yahoo_contacts_not_logged_in.html", "test/fixtures/yahoo_contacts_stage_1.html", "test/fixtures/yahoo_login_response_stage_1.html", "test/fixtures/yahoo_login_response_stage_2.html", "test/fixtures/yahoo_no_user_response_stage_2.html", "test/freenet_importer_test.rb", "test/gmx_importer_test.rb", "test/scripts", "test/scripts/live_test.rb", "test/test_blackbook.rb", "test/test_blackbook_exporter_base.rb", "test/test_blackbook_exporter_vcf.rb", "test/test_blackbook_exporter_xml.rb", "test/test_blackbook_importer_aol.rb", "test/test_blackbook_importer_base.rb", "test/test_blackbook_importer_csv.rb", "test/test_blackbook_importer_gmail.rb", "test/test_blackbook_importer_hotmail.rb", "test/test_blackbook_importer_page_scraper.rb", "test/test_blackbook_importer_yahoo.rb", "test/test_helper.rb", "test/web.de_importer_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://contentfree.com}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Blackbook automates the nitty-gritty of importing contacts from various services and files and exporting them as VCard, XML, or simple Hash. Utilize those contacts from services like AOL, GMail, Yahoo Mail, Hotmail or CSV to help your social networking site become GIGANTIC overnight! You'll be able to get big and sell for millions before anyone figures out it's just like every other social network.}
  
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
