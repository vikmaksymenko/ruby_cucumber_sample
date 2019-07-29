Ruby Cucumber Sample [![CircleCI](https://circleci.com/gh/vikmaksimenko/ruby_cucumber_sample.svg?style=svg)](https://circleci.com/gh/vikmaksimenko/ruby_cucumber_sample) [![Build Status](https://travis-ci.com/vikmaksimenko/ruby_cucumber_sample.svg?branch=master)](https://travis-ci.com/vikmaksimenko/ruby_cucumber_sample)
====================

This project is an example of testing framework for running E2E UI tests on Chrome and Firefox. It uses Cucumber and Capybara for describing steps and actions.

Setup
-----
```
bundle install 
```

Run Tests
---------
**Chrome**
```
rake test_chrome
```
**Firefox**
```
rake test_firefox
```
CI
---
The project is configured to use Circle CI and Travis CI, click on badges in project description to view pipeline runs. Test reports are published by Travis jobs to Surge: 
* http://ruby-cucumber-sample-chrome.surge.sh/
* http://ruby-cucumber-sample-firefox.surge.sh/