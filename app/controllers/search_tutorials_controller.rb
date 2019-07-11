class SearchTutorialsController < ApplicationController
  before_action :set_search_tutorial, only: [:show, :edit, :update, :destroy]

  # GET /search_tutorials
  # GET /search_tutorials.json
  def index
    @search_tutorials = SearchTutorial.all
  end

  # GET /search_tutorials/1
  # GET /search_tutorials/1.json
  def show
  end

  # GET /search_tutorials/new
  def new
    @search_tutorial = SearchTutorial.new
  end

  # GET /search_tutorials/1/edit
  def edit
  end

  # POST /search_tutorials
  # POST /search_tutorials.json
  def create
    @search_tutorial = SearchTutorial.new(search_tutorial_params)

    respond_to do |format|
      if @search_tutorial.save
        format.html { redirect_to @search_tutorial, notice: 'Search tutorial was successfully created.' }
        format.json { render :show, status: :created, location: @search_tutorial }
      else
        format.html { render :new }
        format.json { render json: @search_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_tutorials/1
  # PATCH/PUT /search_tutorials/1.json
  def update
    respond_to do |format|
      if @search_tutorial.update(search_tutorial_params)
        format.html { redirect_to @search_tutorial, notice: 'Search tutorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_tutorial }
      else
        format.html { render :edit }
        format.json { render json: @search_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_tutorials/1
  # DELETE /search_tutorials/1.json
  def destroy
    @search_tutorial.destroy
    respond_to do |format|
      format.html { redirect_to search_tutorials_url, notice: 'Search tutorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_tutorial
      @search_tutorial = SearchTutorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_tutorial_params
      params.require(:search_tutorial).permit(:duration, :course, :start)
    end
end
