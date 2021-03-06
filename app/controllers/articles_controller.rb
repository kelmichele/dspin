class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :show, :update, :destroy, :delete_image_attachment]

  def index
    @articles = Article.all
  end

  def delete_image_attachment
    @article.image.purge
    redirect_back(fallback_location: request.referer)
  end

	def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
	    redirect_to press_path, notice: "Your article has been created."
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to press_path
    else
      render 'edit'
    end
  end

  def show 
  end

  def edit
  end

  def destroy
    @article.destroy

    redirect_to press_path
  end

  private
	  def set_article
			@article = Article.find(params[:id])
	  end

    def article_params
      params.require(:article).permit(:publication, :title, :details, :link1, :link2, :image, :order, :display)
    end
end