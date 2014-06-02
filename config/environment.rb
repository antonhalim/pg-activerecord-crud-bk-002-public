require 'bundler/setup'
Bundler.require

if ENV["PLAYLISTER_ENV"] == "test"
  PG.connect.exec('DROP DATABASE IF EXISTS activerecord_crud_test')
  PG.connect.exec('CREATE DATABASE activerecord_crud_test')
end

require 'active_record'
require 'rake'
require 'yaml/store'
require 'ostruct'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DBRegistry[ENV["PLAYLISTER_ENV"]].connect!
DB = ActiveRecord::Base.connection

if ENV["PLAYLISTER_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

RAKE_APP ||= begin
  app = Rake.application
  app.init
  app.load_rakefile
  app
end
