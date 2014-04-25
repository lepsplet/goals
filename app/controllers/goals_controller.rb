class GoalsController < ApplicationController
  def index
	  @goals = Goal.all
  end

  def new
	  @goal = Goal.new
  end

  def create
	  @goal = Goal.new(goal_params)

	  if @goal.save
		  redirect_to root_path
	  else
		  render 'new'
	  end
  end

  def edit
	  @goal = Goal.find(params[:id])
  end
  
  def update
	  @goal = Goal.find(params[:id])

	  if @goal.update(goal_params)
		  redirect_to root_path
	  else
		  render 'edit'
	  end
  end

  def destroy
	  @goal = Goal.find(params[:id])
	  @goal.destroy
	  redirect_to root_path
  end

  private

  def goal_params
	  params.require(:goal).permit(:name)
  end
end
