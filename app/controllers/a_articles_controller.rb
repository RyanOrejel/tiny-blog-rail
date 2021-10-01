class AArticlesController < ApplicationController
  before_action :set_a_article, only: [:show, :edit, :update, :destroy]

  # GET /a_articles
  def index
    @a_articles = AArticle.all
  end

  # GET /a_articles/1
  def show
  end

  # GET /a_articles/new
  def new
    @a_article = AArticle.new
  end

  # GET /a_articles/1/edit
  def edit
  end

  # POST /a_articles
  def create
    @a_article = AArticle.new(a_article_params)

    if @a_article.save
      redirect_to @a_article, notice: 'A article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /a_articles/1
  def update
    if @a_article.update(a_article_params)
      redirect_to @a_article, notice: 'A article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /a_articles/1
  def destroy
    @a_article.destroy
    redirect_to a_articles_url, notice: 'A article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_article
      @a_article = AArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def a_article_params
      params.require(:a_article).permit(:title, :body)
    end
end
