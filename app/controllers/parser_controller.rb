class ParserController < ApplicationController
  def index
  end

  def parse
    require "csv"

    filepath = params["csv"].to_s

    CSV.foreach(filepath, headers: :first_row) do |row|
    puts "#{row['First Name']} #{row['Last Name']} played #{row['Instrument']}"
    end
  end
end
