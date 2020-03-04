class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :bio, :linkedin_url, :location ])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio, :linkedin_url, :location, :trello_token ])
  end
  
   def after_sign_up_path_for(resource)
    profile_path
   end

   def after_sign_in_path_for(resource)
    profile_path
   end
end
