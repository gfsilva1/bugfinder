class ParserController < ApplicationController
require "csv"

  def index
  end

  def parse
    movies = []
    filepath = params["csv"]

    CSV.foreach(filepath) do |row|
      movie = row[1].to_o
    end
    movie
  end
end
