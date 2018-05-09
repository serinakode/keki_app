class ApplicationController < ActionController::Base
    
    include Pundit 
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    protect_from_forgery with: :exception
    private
  
    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    # def after_sign_in_path_for(user)
    #     if user.profile.nil?
    #         new_profile_path
    #     else
    #         root_path
    #     end
    # end
end 
