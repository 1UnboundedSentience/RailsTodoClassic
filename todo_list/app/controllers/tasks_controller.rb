class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    p Task.all
    redirect_to root_path
  end

  def destroy
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:name, :completed)
  end
end
