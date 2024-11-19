class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(tasks_params)
    @tasks.save

    redirect_to tasks_path(@task)
  end

  def edit
  end

  def update
    @task.update(tasks_params)

    redirect_to tasks_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
