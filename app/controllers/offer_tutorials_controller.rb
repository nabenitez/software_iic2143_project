class OfferTutorialsController < ApplicationController
  before_action :set_offer_tutorial, only: [:show, :edit, :update, :destroy]

  # GET /offer_tutorials
  # GET /offer_tutorials.json
  def index
    @offer_tutorials = OfferTutorial.all
  end

  # GET /offer_tutorials/1
  # GET /offer_tutorials/1.json
  def show
  end

  # GET /offer_tutorials/new
  def new
    @offer_tutorial = OfferTutorial.new
  end

  # GET /offer_tutorials/1/edit
  def edit
  end

  # POST /offer_tutorials
  # POST /offer_tutorials.json
  def create
    @offer_tutorial = OfferTutorial.new(offer_tutorial_params)

    respond_to do |format|
      if @offer_tutorial.save
        format.html { redirect_to @offer_tutorial, notice: 'Offer tutorial was successfully created.' }
        format.json { render :show, status: :created, location: @offer_tutorial }
      else
        format.html { render :new }
        format.json { render json: @offer_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_tutorials/1
  # PATCH/PUT /offer_tutorials/1.json
  def update
    respond_to do |format|
      if @offer_tutorial.update(offer_tutorial_params)
        format.html { redirect_to @offer_tutorial, notice: 'Offer tutorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_tutorial }
      else
        format.html { render :edit }
        format.json { render json: @offer_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_tutorials/1
  # DELETE /offer_tutorials/1.json
  def destroy
    @offer_tutorial.destroy
    respond_to do |format|
      format.html { redirect_to offer_tutorials_url, notice: 'Offer tutorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_tutorial
      @offer_tutorial = OfferTutorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_tutorial_params
      params.require(:offer_tutorial).permit(:duration, :price, :start)
    end
end
