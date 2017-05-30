class ListsController < ApplicationController
  def index
    @lists = list.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @lists = List.new
  end

  def create
    @list.save
    redirect_to lists_path
  else 
    render: new
  end
end

private

def list_params
  params.require(:post).permit(:body)
end

end

