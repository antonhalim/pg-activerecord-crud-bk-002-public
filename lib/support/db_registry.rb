require 'ostruct'
DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/activerecord-crud-test.db"), 
  development: ConnectionAdapter.new("db/activerecord-crud-development.db"), 
  production: ConnectionAdapter.new("db/activerecord-crud-production.db")
  )