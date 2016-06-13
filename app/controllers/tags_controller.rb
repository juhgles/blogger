class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def new
    @tag = Tag.new
  end

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "'#{@tag}' deleted!"

    redirect_to tags_path
  end

end
