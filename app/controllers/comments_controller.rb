class CommentsController < ApplicationController
  def create
    @project = Project.find(params[:comment][:project_id])
    @comment = @project.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @project }
      end
    else
      render 'projects/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
