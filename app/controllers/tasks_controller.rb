class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task
      @task.destroy
      redirect_to tasks_path, notice: 'Task was successfully deleted.', status: :see_other
    else
      redirect_to tasks_path, alert: 'Task not found.', status: :not_found
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :content)
    end

end
