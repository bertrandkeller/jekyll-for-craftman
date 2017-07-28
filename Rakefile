require 'fileutils'

task :build => ["build:prod"]
namespace :build do

  desc "Regenerate files for production"
  task :prod do
    system "apt-get install ghostscript"
    system "apt-get install imagemagick"
    puts "* Regenerate images"
    system "bash resize.sh"
    puts "* Regenerating files for production..."
    system "bundle exec jekyll build -d _site"
    system "ls"
    system "tree"
    puts "* Finish"
  end

  desc "Regenerate files for development"
  task :dev do
    puts "* Regenerating files for development..."
    system "bundle exec jekyll serve --config _config.yml,_config_dev.yml --profile --incremental"
  end

end


