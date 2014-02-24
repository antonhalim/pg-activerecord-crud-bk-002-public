ENV["PLAYLISTER_ENV"] = "test"

require_relative '../config/environment'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.color_enabled = true
  config.formatter = :documentation
  config.order = 'default'

  config.before do
    run_rake_task('db:migrate')
  end
end

def load_rake(&block)
  app = Rake.application
  app.init
  app.load_rakefile
  yield app
end

def run_rake_task(task)
  load_rake do |app|
    app[task].invoke
    app[task].reenable
  end
end

def clean_database
  Movie.delete_all if defined?(Movie) && DB.tables.include?("movies")
end

def __
  raise "Replace __ with test code."
end
