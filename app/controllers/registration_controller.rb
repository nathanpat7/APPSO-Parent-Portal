class RegistrationController < ApplicationController
    def index
    
    end

    def create
        ### TODO: PUT FIRSTNAME LASTNAME AND EMAIL IN DB ###
        # First name is params[:first_name]
        # Last name is params[:last_name]
        # Email is params[:email]
        p params[:email]
        p params[:first_name]
        p params[:last_name]

        redirect_to action: :index
    end
end
