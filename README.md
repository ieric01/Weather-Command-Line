
tags: cli, oo, full-application, project, oop
language: ruby
resources: 3


# Project Week 1

## Contents

This readme is organized into eight sections:

1. Guidelines
2. Requirements
3. Inspiration
4. Instructions
5. Adding Gems
6. Testing out Your Code
7. Resources

1. Guidelines
   This is a weather forecast application based on ruby. Created by Eric Orellana
   and Anton Halim in order to pass the project week.
   This application basically generate 5 days forecasts starting from today to
   the next 5th day.
   User will be asked to make inputs based on location they desire.
   To be more specific, user will be asked for city name and country to reduce
   ambiguous output from the app. If you found any bug, please contact us,
   via Flatiron School, or slack, or email or anything you like.
   Have fun =)

2. Requirements
   A working computer, preferably a mac
   Definitely a working version Ruby of 2.2.0 or higher
   Ruby Gems
   and yourself.


3. Inspiration
   Based on requirements meets demands, we think, weather forecast application will
   just be fine and useful and not being intriguing sarcastic exposing some others
   personal/businees information.
   Weather forecast is scientific and less arguable rather than other information
   eventhough it could be wrong at some point.
   We would like something simple, working, useful application for our first trial
   of learning by doing it.
   We make it work.

### Data Parsing
    Parsing the data was a big pain in the *ss as we tried and looked at the
    data and searched for a while

### Scraping
    It was in a big nested hash. Took forever to scrape
    and the time was in epoch stamp, so we need to convert it into
    a gregorian date type by using DateTime.strptime method and
    Date.strftime method to acquire the day and the date.

### APIs

* [Open Weather](http://openweathermap.org/current)
  http://api.openweathermap.org/data/2.5/forecast/daily?lat=35&lon=139&cnt=10&mode=json


4.Instructions

* Choose your group or decide to work alone.
* Brainstorm ideas.
* Get your idea approved by an instructor.
* Decide who will fork this lab.
* Have everyone in your group clone down the fork onto their local machines.
* Each team member should run `bundle install`
* Get familiar with the structure of this lab:

```
├── Gemfile
├── README.md
├── app
│   ├── concerns
│   │   └── example_module.rb
│   ├── data_fetchers
│   │   └── weather_api_caller.rb
│   │
│   ├── models
│   │   ├──city.rb
│   │   ├──forecast.rb
│   │
│   └── runners
│       └── WeatherCLI.rb
├── bin
│   └── run.rb
├── config
│   └── environment.rb
└── spec
    ├── example_spec.rb
    ├── fixtures
    │   └── example_fixture_file.json
    └── spec_helper.rb
```
5. Added Gems
  Please add Gem install bundle, colorize, json, and pry into your library

6. Testing Your Code
  Please run it for us


7. Resources
* TA's : Blake, Steven, and Katie. You guys awesome
* [http://openweathermap.org/forecast]
* [About Bundler](http://bundler.io/)
* [RSpec Docs](https://www.relishapp.com/rspec)
* [Playlister CLI](https://github.com/flatiron-school-ironboard/playlister-cli-bk-002)
*
# Weather-Command-Line
Find the weather through your terminal
