class StudyGroupUsersController < ApplicationController
  before_action :set_course_user, only: [:show, :edit, :update, :destroy]

  # GET /study_group_users
  # GET /study_group_users.json
  def index
    @course_users = CourseUser.all
  end

  # GET /study_group_users/1
  # GET /study_group_users/1.json
  def show
  end

  # GET /study_group_users/new
  def new
    @course_user = CourseUser.new
  end

  # GET /study_group_users/1/edit
  def edit
  end

  # POST /study_group_users
  # POST /study_group_users.json
  def create
    #@study_group_user = StudyGroupUser.new
    @course_user =  current_user.course_users.new(:course_id => params[:course_id])
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
        format.html { redirect_to @course_user}
        format.json { render :show, status: :ok, location: @course_user }
      else
        format.html { render :edit }
        format.json { render json: @course_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_group_users/1
  # DELETE /study_group_users/1.json
  def destroy
    #@study_group_user.destroy
    respond_to do |format|
      #format.html { redirect_to study_group_users_url, notice: 'Study group user was successfully destroyed.' }
      format.html { redirect_to course_users_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_user
      @course_user = CourseUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_user_params
      params.fetch(:course_user, {})
    end
end
