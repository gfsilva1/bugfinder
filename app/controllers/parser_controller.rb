class ParserController < ApplicationController
  def index
  end

  def import
    erros = []
    file = params["csv"]
    File.open(file).each do |row|
      begin
        row = row.split(",")

        descricao = row[0].strip rescue row[0]
        ano = row[1].strip rescue row[1]

        Bug.create(descricao: descricao, ano: ano)
      rescue => exception
        erros << err.message
      end
    end
  end
end
