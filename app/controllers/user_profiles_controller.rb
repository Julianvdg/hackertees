class UserProfilesController < ApplicationController
    def new
        @user_profile = UserProfile.new
        if current_user.user_profile.blank?
            render 'new'
        else
            render 'edit'
        end
    end
    
    
    def create
        user_profile_params = params.require( :user_profile ).permit(:first_name, :last_name, :address, :city, :postal_code, :country, :user_id)
        
        @user_profile = UserProfile.new( user_profile_params )
        
        if @user_profile.save
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    
end
