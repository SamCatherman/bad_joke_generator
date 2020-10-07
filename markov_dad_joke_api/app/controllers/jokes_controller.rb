class JokesController < ApplicationController
#   include MarkovChain
  def index
    @jokes = Joke.all # fetch jokes from cache
    render json: @jokes
  end

  def generate
    dad_joke = Services::Api.fetch_joke
    markov_chain = Services::MarkovChain.new(dad_joke["joke"])
    markov_joke = markov_chain.generate
    @joke = Joke.create(text: dad_joke, markov_translation: markov_joke)
    render json: @joke
  end
end
