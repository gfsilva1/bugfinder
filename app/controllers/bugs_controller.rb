class BugsController < ApplicationController
  def index
    @bugs = Bug.all
  end

  def show
    @bug = Bug.find(params[:id])
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(bug_params)
    @bug.save
    redirect_to bug_path(@bug)
  end

  def bug_params
    params.require(:bug).permit(:descricao, :comportamento, :causa, :prioridade, :categoria, :evidencias)
  end
end
