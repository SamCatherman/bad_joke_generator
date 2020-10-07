class JokesController < ApplicationController
#   include MarkovChain
  def index
    @jokes = Joke.all # fetch jokes from cache
    render json: @jokes
  end

  def generate
    dad_joke = Services::Api.fetch_joke
    render json: dad_joke
  end
end
