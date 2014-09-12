require 'rubygems'
require 'bundler'
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'
require 'rake'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

def spec
	RSpec::Core::RakeTask.new
	Cucumber::Rake::Task.new(:features) do |t|
  	t.cucumber_opts = "features --format pretty"
	end
end

task :default => spec