class RoomEvaluationsController < ApplicationController
  before_action :set_room_evaluation, only: [:edit, :update, :destroy]

  # GET /room_evaluations
  # GET /room_evaluations.json
  def index
    @user_rooms = current_user.study_rooms
    @room_evaluations = RoomEvaluation.all
  end

  # GET /room_evaluations/1
  # GET /room_evaluations/1.json
  def show
    @room_evaluation = RoomEvaluation.find(params[:id])
  end

  # GET /room_evaluations/new
  def new
    @room_evaluation = RoomEvaluation.new
    @room_id = params[:room_id]
  end

  # GET /room_evaluations/1/edit
  def edit
    @room_id = params[:id]
  end

  # POST /room_evaluations
  # POST /room_evaluations.json
  def create
    @room_evaluation = RoomEvaluation.new(room_evaluation_params)

    respond_to do |format|
      if @room_evaluation.save
        format.html { redirect_to :action => 'index'}
        #format.html { redirect_to @room_evaluation, notice: 'Room evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @room_evaluation }
      else
        format.html { render :new }
        format.json { render json: @room_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_evaluations/1
  # PATCH/PUT /room_evaluations/1.json
  def update
    respond_to do |format|
      if @room_evaluation.update(room_evaluation_params)
        format.html { redirect_to :action => 'index'}
        #format.html { redirect_to @room_evaluation, notice: 'Room evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @room_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_evaluations/1
  # DELETE /room_evaluations/1.json
  def destroy
    @room_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to room_evaluations_url, notice: 'Room evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_evaluation
      @room_evaluation = RoomEvaluation.find(params[:id])
    end

    def set_user
      @user = User.finde(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_evaluation_params
      params.require(:room_evaluation).permit(:study_room_id, :user_id, :available_score, :noise_score, :plug_score, :comment)
    end
end
