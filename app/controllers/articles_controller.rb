class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
    @innovator_list = get_innovator_list
  end

  # GET /articles/1/edit
  def edit
    @innovator_list = get_innovator_list
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    set_innovators

    update_image
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    set_innovators

    update_image
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    def set_innovators
      ids = article_params["innovator_ids"].map(&:to_i).select{|i| i > 0}.sort
      @article.innovators = Innovator.where(:id => ids)
    end

    def get_innovator_list
      Innovator.all.map{|i| [i.name, i.id]}
    end

    def update_image
      upload_img = params["article"]["cover"]
      if upload_img.present?
        image = Image.new(article_id: @article.id, title: upload_img.original_filename, img: upload_img.read)
        @article.image = image
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :target_amount, :closed_at, {:innovator_ids => []})
    end
end
