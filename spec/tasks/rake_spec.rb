require_relative '../spec_helper'

describe 'rake db:seed' do
  it 'seeds the database with data' do
    run_rake_task('db:seed')
    expect(Movie.all.size).to eq(5)
    expect(Movie.first.title).to eq("Wargames")
  end
end