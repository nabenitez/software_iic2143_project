class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # Esto en caso de que se quiera manejar errores
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
  def handle_record_not_found
   # Send it to the view that is specific for Post not found
   render :index2
  end

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def unsubscribe
    @course = Course.find(params[:id])
    @course_user = @course.course_users.where(:user_id => current_user.id).first.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_user_path(current_user), notice: 'Unsubscribed!' }
      format.json { head :no_content }
    end
  end

  def subscribe
    @course = Course.find(params[:id])
    @course_user = @course.course_users.new(:user_id => current_user.id)
    User.all.where()
    respond_to do |format|
      if @course_user.save
        #format.html { redirect_to @study_group, notice: 'Study group was successfully created.' }
        format.html { redirect_to courses_url, notice: 'Course was succesfully subscribed'}
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :acronym)
    end
end
