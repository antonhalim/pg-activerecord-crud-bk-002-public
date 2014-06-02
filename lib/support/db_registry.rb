DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("activerecord_crud_test", "postgresql"), 
  development: ConnectionAdapter.new("activerecord_crud_development", "postgresql"),
  production: ConnectionAdapter.new("activerecord_crud_production", "postgresql")
  )
