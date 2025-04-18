class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: %i[ show edit update ]

  def index
    @projects = Project.order(:created_at)
  end

  def show
    @comment = current_user.comments.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        StatusHistory.create!(project: @project, status: @project.status, user: current_user)

        format.html { redirect_to project_url(@project), notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:status)
  end
end
