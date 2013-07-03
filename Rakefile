require './app'
require 'sinatra/activerecord/rake'

desc "gather student data"

task :populate_database do

  students = [
    {:name => "Steven", :url => "stevenabrooks.github.io"},
    {:name => "George", :url => "gglin.github.io"},
    {:name => "Jen", :url => "jeneisen.github.io"}
  ]

  students.each do |student|
    Student.create(student)
  end

end

desc "retreive latest blog posts"

task :get_recent_post do

  Student.all.each do |student|
    feed_url = "#{student.url}/atom.xml"

    # takes a URL i.e. jeneisen.github.io/atom.xml
    Feedzirra::Feed.fetch_and_parse(feed_url,
      :on_success => lambda {|url, feed| student.latest_post = feed.entries.first.content; student.save },
      :on_failure => lambda {|url, feed| puts "Got a 404" }
    )
  end

end