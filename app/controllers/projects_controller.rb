class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @projects = Project.all
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end
end
