class ArticlesController < ApplicationController
  def index
    @articles = Article.find(params[:id])
  end
end
