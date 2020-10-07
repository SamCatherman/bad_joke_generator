require 'rails_helper'

RSpec.describe Joke, type: :model do
  it "validates the presence of a joke text and a markov translation" do
    expect(Joke.new(text: "Joke text", markov_translation: "Translation!")).to be_valid
  end

  it "rolls back a Joke without text" do
    expect(Joke.new(text: nil, markov_translation: "translation")).to_not be_valid
  end

  it "rolls back a Joke without a markov translation" do
    expect(Joke.new(text: 'Joke text', markov_translation: nil)).to_not be_valid
  end
end
