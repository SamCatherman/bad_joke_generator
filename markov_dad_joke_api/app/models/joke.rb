class Joke < ApplicationRecord
  validates :text, :markov_translation, presence: true
end
