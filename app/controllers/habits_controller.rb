class HabitsController < ActionController::Base

  def index
    @habits = Habit.where(user_id: params[:user_id])
    render json: {
      success: true,
      habits: @habits
    }, status: :ok
  end

  def create
    @habit = Habit.new(habit_params)
    if @habit.save
      render json: {
        success: true,
        habit: @habit
      }, status: :ok
    else
      render json: {
        success: false,
        habit: @habit.errors.full_messages
      }, status: :bad_request
    end
  end

  private

    def habit_params
      params.require(:habit).permit(:name, :count, :goal, :exp, :bronze, :silver, :gold, :user_id)
    end

end
