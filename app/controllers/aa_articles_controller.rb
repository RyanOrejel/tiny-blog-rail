class AaArticlesController < ApplicationController
  before_action :set_aa_article, only: [:show, :edit, :update, :destroy]

  # GET /aa_articles
  def index
    @aa_articles = AaArticle.all
  end

  # GET /aa_articles/1
  def show
  end

  # GET /aa_articles/new
  def new
    @aa_article = AaArticle.new
  end

  # GET /aa_articles/1/edit
  def edit
  end

  # POST /aa_articles
  def create
    @aa_article = AaArticle.new(aa_article_params)

    if @aa_article.save
      redirect_to @aa_article, notice: 'Aa article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /aa_articles/1
  def update
    if @aa_article.update(aa_article_params)
      redirect_to @aa_article, notice: 'Aa article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /aa_articles/1
  def destroy
    @aa_article.destroy
    redirect_to aa_articles_url, notice: 'Aa article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aa_article
      @aa_article = AaArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aa_article_params
      params.require(:aa_article).permit(:title, :body)
    end
end
