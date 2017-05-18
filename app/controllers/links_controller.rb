class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

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
    if @link.update link_params
      redirect_to links_path
    else
      render 'edit'
    end
  end

  def destroy
    @link.destroy
    redirect_to links_path
  end

  def show
    # remove layout to speed up
    render file: 'links/show', layout: false
  end

  private
  def link_params
    params.require(:link).permit!
  end

  def set_link
    @link = Link.find params[:id]
  end
end
