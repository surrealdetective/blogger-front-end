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