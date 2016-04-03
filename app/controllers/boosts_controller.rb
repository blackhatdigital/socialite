class BoostsController < ApplicationController
  before_action :set_boost, only: [:show, :edit, :update, :destroy]

  # GET /boosts
  # GET /boosts.json
  def index
    @boosts = Boost.all
  end

  # GET /boosts/1
  # GET /boosts/1.json
  def show
  end

  # GET /boosts/new
  def new
    @boost = Boost.new
  end

  # GET /boosts/1/edit
  def edit
  end

  # POST /boosts
  # POST /boosts.json
  def create
    @boost = Boost.new(boost_params)

    respond_to do |format|
      if @boost.save
        format.html { redirect_to @boost, notice: 'Boost was successfully created.' }
        format.json { render :show, status: :created, location: @boost }
      else
        format.html { render :new }
        format.json { render json: @boost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boosts/1
  # PATCH/PUT /boosts/1.json
  def update
    respond_to do |format|
      if @boost.update(boost_params)
        format.html { redirect_to @boost, notice: 'Boost was successfully updated.' }
        format.json { render :show, status: :ok, location: @boost }
      else
        format.html { render :edit }
        format.json { render json: @boost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boosts/1
  # DELETE /boosts/1.json
  def destroy
    @boost.destroy
    respond_to do |format|
      format.html { redirect_to boosts_url, notice: 'Boost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boost
      @boost = Boost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boost_params
      params.require(:boost).permit(:name, :description, :price, :profile)
    end
end
