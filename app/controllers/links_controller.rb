class LinksController < ApplicationController
  before_action :set_link, only: [:edit, :update, :destroy]

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new link_params

    if @link.save
      redirect_to links_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @link.destroy
    redirect_to links_path
  end

  private
  def link_params
    params.require(:link).permit!
  end

  def set_link
    @link = Link.find params[:id]
  end
end
