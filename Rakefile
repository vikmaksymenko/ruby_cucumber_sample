# frozen_string_literal: true

task :test do
  system 'bundle exec cucumber'
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
