class TodoItemsController < ApplicationController

  before_action :set_todo_list

  def create
    # @todo_list = TodoList.find(params[:todo_list_id])
    @todo_item = @todo_list.todo_items.create(todo_items_params)
    redirect_to @todo_list
  end

  def destroy
    @todo_item = @todo_list.todo_items.find(params[:id])
    if @todo_item.destroy
      flash[:success] = "Todo item was deleted successfully."
    else
      flash[:alert] = "Error unable to delete, please try again."
    end
      redirect_to @todo_list
  end

  # All private methods below ************************************************
  private

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def todo_items_params
    params[:todo_item].permit(:content)
  end

end
