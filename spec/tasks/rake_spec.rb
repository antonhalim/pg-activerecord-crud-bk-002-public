require_relative '../spec_helper'

describe 'rake db:seed' do
  it 'seeds the database with data' do
    run_rake_task('db:seed')
    expect(Movie.all.size).to eq(5)
    expect(Movie.last.title).to eq("Zero Dark Thirty")
  end
end