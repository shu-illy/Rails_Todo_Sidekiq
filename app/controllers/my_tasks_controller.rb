class MyTasksController < ApplicationController
  protect_from_forgery

  def index
    @my_tasks = MyTask.order(created_at: "DESC").all
  end

  def show
    id = params[:id]
    @my_task = MyTask.find(id)
  end

  def create
    WaitWorker.perform_async(5, params.to_json)
    redirect_to my_tasks_path
  end
end
