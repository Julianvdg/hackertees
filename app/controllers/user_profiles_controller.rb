class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: [:show, :edit, :update, :destroy]

  # GET /user_profiles
  # GET /user_profiles.json
  def index
    if current_user.user_profile
    redirect_to edit_user_profile_path(current_user.user_profile)
    else
    redirect_to new_user_profile_path
    end
  end

  # GET /user_profiles/1
  # GET /user_profiles/1.json
  def show
  end

  def order_history
    @user = current_user.user_profile
    @orders = current_user.orders
  end

  # GET /user_profiles/new
  def new
    if current_user.user_profile
    redirect_to edit_user_profile_path(current_user.user_profile)
    else
    @user_profile = UserProfile.new
    end
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles
  # POST /user_profiles.json
  def create

    @user_profile = UserProfile.new(user_profile_params)

    respond_to do |format|
      if @user_profile.save
        format.html { redirect_to @user_profile, notice: 'User profile was successfully created.' }
        format.json { render :show, status: :created, location: @user_profile }
      else
        format.html { render :new }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_profiles/1
  # PATCH/PUT /user_profiles/1.json
  def update
    respond_to do |format|
      if @user_profile.update(user_profile_params)
        format.html { redirect_to @user_profile, notice: 'User profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_profile }
      else
        format.html { render :edit }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.json
  def destroy
    @user_profile.destroy
    respond_to do |format|
      format.html { redirect_to user_profiles_url, notice: 'User profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_profile_params
      params.require(:user_profile).permit(:first_name, :last_name, :address, :city, :postal_code, :country, :user_id)
    end
end
