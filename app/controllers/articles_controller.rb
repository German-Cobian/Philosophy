class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  # GET /articles or /articles.json
  def index
    @articles = Article.all.most_recent_by_category
  end

  # GET /articles/1 or /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
    @categories = Category.all
    @categoriesSelect = @categories.pluck(:name, :id)
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles or /articles.json
  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      flash.now[:success] = 'Article created'
      redirect_to article_path(@article)
    else
      @categories = Category.all
      @categoriesSelect = @categories.pluck(:name, :id)
      flash[:danger] = 'Article could not be created'
      render :new
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = current_user.articles.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: 'Article was destroyed.'
  end
end

private

# Only allow a list of trusted parameters through.
def article_params
  params.require(:article).permit(:title, :text, :image, :category_id)
end

# Use callbacks to share common setup or constraints between actions.
def set_article
  @article = Article.find(params[:id])
end
