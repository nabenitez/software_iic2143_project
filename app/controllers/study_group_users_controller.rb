class StudyGroupUsersController < ApplicationController
  before_action :set_study_group_user, only: [:show, :edit, :update, :destroy]

  # GET /study_group_users
  # GET /study_group_users.json
  def index
    @study_group_users = StudyGroupUser.all
  end

  # GET /study_group_users/1
  # GET /study_group_users/1.json
  def show
  end

  # GET /study_group_users/new
  def new
    @study_group_user = StudyGroupUser.new
  end

  # GET /study_group_users/1/edit
  def edit
  end

  # POST /study_group_users
  # POST /study_group_users.json
  def create
    #@study_group_user = StudyGroupUser.new
    @study_group_user =  current_user.study_group_users.new(:study_group_id => params[:study_group_id])
  #   respond_to do |format|
  #     if @study_group_user.save
  #       format.html { redirect_to @study_group_user, notice: 'Study group user was successfully created.' }
  #       format.json { render :show, status: :created, location: @study_group_user }
  #     else
  #       format.html { render :new
  #       format.json { render json: @study_group_user.errors, status: :unprocessable_entity }
  #     end
  #   end
  end

  # PATCH/PUT /study_group_users/1
  # PATCH/PUT /study_group_users/1.json
  def update
    respond_to do |format|
      if @study_group_user.update(study_group_user_params)
        #format.html { redirect_to @study_group_user, notice: 'Study group user was successfully updated.' }
        format.html { redirect_to @study_group_user}
        format.json { render :show, status: :ok, location: @study_group_user }
      else
        format.html { render :edit }
        format.json { render json: @study_group_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_group_users/1
  # DELETE /study_group_users/1.json
  def destroy
    #@study_group_user.destroy
    respond_to do |format|
      #format.html { redirect_to study_group_users_url, notice: 'Study group user was successfully destroyed.' }
      format.html { redirect_to study_group_users_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_group_user
      @study_group_user = StudyGroupUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_group_user_params
      params.fetch(:study_group_user, {})
    end
end
