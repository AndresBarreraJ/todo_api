class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

#Get /todos
  def index
    #gets current user todos
    @todos = current_user.todos
    json_response(@todos)
  end

  #post /todos
  def create
    @todo = current_user.todos.create!(todo_params)
    json_response(@todo, :created)
  end

  #get /todos/:id
  def show
    json_response(@todo)
  end

  #put /todos/:idea
  def update
    @todo.update(todo_params)
    head :no_content
  end
  #delete /todos/:id
  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    #whitelist params
    params.permit(:title)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
