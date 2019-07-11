class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_study_group, only: [:new, :create, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = current_user
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.study_group_id = @study_group.id

    respond_to do |format|
      if @user.save
        #format.html { redirect_to study_groups_path(@study_group.id), notice: 'User was successfully created.'}
        format.html { redirect_to study_groups_path(@study_group.id)}

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        #format.html { redirect_to @user, notice: 'Study group user was successfully updated.' }
        format.html { redirect_to @user}
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      #format.html { redirect_to users_url, notice: 'Study group user was successfully destroyed.' }
      format.html { redirect_to users_url}
      format.json { head :no_content }
    end
  end

  def show_evaluation
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def set_study_group
      @study_group = StudyGroup.find(params[:study_group_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:uname, :email, :degree, :generation_degree, :picture)
    end
end
