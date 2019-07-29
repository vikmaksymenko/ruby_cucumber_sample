# frozen_string_literal: true

task :test_chrome do
  system 'BROWSER=chrome bundle exec cucumber'
end

task :test_firefox do
  system 'BROWSER=firefox bundle exec cucumber'
end


task :validate do
  system 'gem install rubocop'
  system 'rubocop'
end

task :cleanup do
  rm(Dir['reports/screenshots/screenshot*'])
  rm(Dir['reports/*.html'])
  puts 'Reports deleted'
end
