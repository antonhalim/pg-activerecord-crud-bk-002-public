require_relative '../spec_helper'

describe Movie do
  context Movie.new do
    it 'has a title' do
      subject.title = "The Matrix"
      expect(subject.title).to eq("The Matrix")
    end

    it 'has a release date' do
      subject.release_date = 1999
      expect(subject.release_date).to eq(1999)
    end

    it 'has a director' do
      subject.director = "The Wachowski Brothers"
      expect(subject.director).to eq("The Wachowski Brothers")
    end

    it 'has a lead actor/actress' do
      subject.lead = "Keanu Reeves"
      expect(subject.lead).to eq("Keanu Reeves")
    end

    it 'has an in theaters flag' do
      subject.in_theaters = false
      expect(subject.in_theaters).to eq(false)
    end
  end

  context '::new' do
    let(:attributes) {
      title: "The Sting",
      release_date: 1973,
      director: "George Roy Hill",
      lead: "Paul Newman",
      in_theaters: false
    }

    it 'can be instantiated without any attributes' do
      expect{Movie.new}.to_not raise_error
    end

    it 'can be instantiated with a hasn of attributes' do
      expect{Movie.new(attributes)}.to_not raise_error
    end
  end

  context Movie.new(attributes), '#save' do
    it 'can be saved to the database' do
      subject.save
      expect(Movie.find(attributes)).to eq(subject)
    end
  end
end