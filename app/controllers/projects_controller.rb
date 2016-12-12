class ProjectsController < ActionController::Base

  def index
    @projects = Project.where(user_id: params[:user_id])
    render json: {
      success: true,
      projects: @projects
    }, status: :ok
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: {
        success: true,
        project: @project
      }, status: :ok
    else
      render json: {
        success: false,
        project: @project.errors.full_messages
      }, status: :bad_request
    end
  end

  private

    def project_params
      params.require(:project).permit(:name, :user_id)
    end

end
