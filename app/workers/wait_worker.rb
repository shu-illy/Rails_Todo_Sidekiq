class WaitWorker
  include Sidekiq::Worker

  def perform(time, params)
    sleep time
    my_task = MyTask.new
    params = JSON.parse(params)
    my_task.title = params["title"]
    my_task.description = params["description"]
    my_task.public = params["public"]
    my_task.updated_at = Time.now
    my_task.save
  end
end