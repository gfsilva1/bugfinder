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
        comportamento = row[1]&.strip
        causa = row[2]&.strip
        prioridade = row[3]&.strip
        categoria = row[4]&.strip
        evidencias = row[5]&.strip

        Bug.create(descricao: descricao, comportamento: comportamento, causa: causa, prioridade: prioridade, categoria: categoria,
                   evidencias: evidencias)
      rescue => exception
        erros << exception.message
      end
    end
    redirect_to bugs_path
  end
end
