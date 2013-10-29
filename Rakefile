$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Run lib/frac_main.rb"
task :bin do
   sh "ruby lib/frac_main.rb"
end

desc "Run tests with --format documentation"
task :test do
   sh "rspec -I spec/frac_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
   sh "rspec -I spec/frac_spec.rb --format html"
end

