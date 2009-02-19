# -*- ruby -*-

require 'rubygems'
$LOAD_PATH.unshift 'lib'
require 'blackbook'

begin
  require 'rcov/rcovtask'
rescue LoadError
end

begin
  Rcov::RcovTask.new do |t|
    t.test_files = FileList['test/test*.rb']
    t.verbose = true
    #t.rcov_opts << "--exclude rcov.rb,hpricot.rb,hpricot/.*\.rb"
  end
rescue NameError
end
