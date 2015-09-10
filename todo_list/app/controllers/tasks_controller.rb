class TasksController < ApplicationController
  def index
  end

  def create
    redirect_to list_task_url(@list, @task)
  end

  def destroy
  end

  def edit
  end
end
