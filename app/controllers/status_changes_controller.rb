class StatusChangesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    previous_status = @project.status
    new_status = params[:new_status]
    @status_change = @project.status_changes.new(previous_status: previous_status, new_status: new_status)

    if @status_change.save
      @project.update(status: new_status)
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @project }
      end
    else
      render 'projects/show'
    end
  end
end
