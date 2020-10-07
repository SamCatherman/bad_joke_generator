class JokesController < ApplicationController
#   include MarkovChain
  def index
    @jokes = Joke.all # fetch jokes from cache
    render json: @jokes
  end

  def generate
    # ::MarkovChain.generate
    byebug
    # joke_params = MarkovChain.generate
    # @joke = Joke.create(joke_params)
    render json: "@joke"
  end
end
