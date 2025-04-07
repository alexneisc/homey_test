class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new

  end

  def create
    project = Project.find(comment_params[:project_id])
    @comment = current_user.comments.new(project: project, body: comment_params[:body])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to project_url(project), notice: "Comment was successfully created." }
      else
        format.html { redirect_to project_url(project), notice: "Error saving comment." }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :project_id)
  end
end
