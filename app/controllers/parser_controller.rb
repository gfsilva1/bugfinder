class ParserController < ApplicationController
  def index
  end

  def import
    erros = []
    file = params["csv"]
    File.open(file).each do |row|
      begin
        row = row.split(",")

        descricao = row[0]&.strip
        ano = row[1]&.strip

        Bug.create(descricao: descricao, comportamento: ano)
      rescue => exception
        erros << exception.message
      end
    end
    render json: erros
  end
end
