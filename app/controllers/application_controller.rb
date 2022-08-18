class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :father_name, :last_name, :username, :email, :department_id, :role, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :father_name, :last_name, :username, :email, :department_id, :role, :password_confirmation, :current_password])
    end
  
    # def authenticate_user!
    #   if user_signed_in?
    #     super
    #   else
    #     redirect_to new_user_session_path, :alert => 'Not authorized! You need to sign in first'
    #     ## if you want render 404 page
    #     ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    #   end
    # end

    def is_admin?
      byebug
      if current_user.admin?
        console.log("admin here")
        true
      else
        render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
      end
    end
end
