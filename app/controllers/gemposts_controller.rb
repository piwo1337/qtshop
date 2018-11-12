class GempostsController < ApplicationController
  before_action :authorize_admin, except: [:show]
  before_action :set_gempost, only: [:show, :edit, :update, :destroy]

  # GET /gemposts
  # GET /gemposts.json
  def index
    @gemposts = Gempost.all
  end

  # GET /gemposts/1
  # GET /gemposts/1.json
  def show
  end

  # GET /gemposts/new
  def new
    @gempost = Gempost.new
  end

  # GET /gemposts/1/edit
  def edit
  end

  # POST /gemposts
  # POST /gemposts.json
  def create
    @gempost = Gempost.new(gempost_params)

    respond_to do |format|
      if @gempost.save
        format.html { redirect_to @gempost, notice: 'Gempost was successfully created.' }
        format.json { render :show, status: :created, location: @gempost }
      else
        format.html { render :new }
        format.json { render json: @gempost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gemposts/1
  # PATCH/PUT /gemposts/1.json
  def update
    respond_to do |format|
      if @gempost.update(gempost_params)
        format.html { redirect_to @gempost, notice: 'Gempost was successfully updated.' }
        format.json { render :show, status: :ok, location: @gempost }
      else
        format.html { render :edit }
        format.json { render json: @gempost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gemposts/1
  # DELETE /gemposts/1.json
  def destroy
    @gempost.destroy
    respond_to do |format|
      format.html { redirect_to gemposts_url, notice: 'Gempost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gempost
      @gempost = Gempost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gempost_params
      params.require(:gempost).permit(:title, :content, :img)
    end

    def authorize_admin
      return unless !admin_signed_in?
      redirect_to root_path, alert: 'Admins only!'
    end

end
