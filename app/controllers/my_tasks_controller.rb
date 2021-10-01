class MyTasksController < ApplicationController
  def index
    @my_tasks = MyTask.order(created_at: "DESC").all
  end

  def show
    id = params[:id]
    @my_task = MyTask.find(id)
  end

  def create
    my_task = MyTask.new
    my_task.title = params[:title]
    my_task.description = params[:description]
    my_task.public = params[:public]
    my_task.save
    redirect_to my_tasks_path
  end
end
