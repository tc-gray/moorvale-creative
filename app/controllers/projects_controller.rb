class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  def edit
    # find_project
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Product was successfully updated'
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :bio, :content, :current)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
