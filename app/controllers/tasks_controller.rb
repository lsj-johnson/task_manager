class TasksController < ActionController::Base
  def index
    @tasks = ['task 1', 'task 2', 'task 3']
  end

  def new

  end

  def create
    task = Task.new({
      title: params[:task][:title],
      description: params[:task][:description]
      })

    task.save

    redirect_to '/tasks'
  end
end
