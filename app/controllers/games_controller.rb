class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << ('a'..'z').to_a.sample }
  end

  def score
    @valid = false
    raise
    if (params[:letters].split(' ') | params[:answer].split('')) == params[:letters].split(' ')
      @valid = true
    else
      @valid = false
    end
  end
end
