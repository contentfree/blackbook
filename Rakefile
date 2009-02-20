# -*- ruby -*-

require 'rubygems'
require 'rake'
require 'rake/testtask'

$LOAD_PATH.unshift 'lib'
require 'blackbook'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "blackbook"
    s.email = "dave.myron@contentfree.com"
    s.homepage = "http://contentfree.com"
    s.summary = "Blackbook automates the nitty-gritty of importing contacts from various services and files and exporting them as VCard, XML, or simple Hash. Utilize those contacts from services like AOL, GMail, Yahoo Mail, Hotmail or CSV to help your social networking site become GIGANTIC overnight! You'll be able to get big and sell for millions before anyone figures out it's just like every other social network."
    s.authors = ["Dave Myron", "Mike Mondragon", "purzelrekate", "jjolma", "bcardarella", "kieranj", "weplay", "and more..."]
  end  
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/test_blackbook*.rb'
  t.warning = true
  t.verbose = true
end