require 'rake'
require 'rake/testtask'
require 'cucumber/rake/task'

task :default => [:cucumber]

task :cucumber do
  ENV['SELENIUM_BROWSER'] = "firefox"
  Rake::Task[:features].execute
end

task :all_browsers do
  browsers = [
    { :browser => "chrome" },
    { :browser => "firefox" },
  ]

  browsers.each do |browser|
    ENV['SELENIUM_BROWSER'] = browser[:browser]
    Rake::Task[:features].execute
  end
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
end
