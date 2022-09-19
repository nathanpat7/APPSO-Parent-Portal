class LoginController < ApplicationController
    def index
    
    end

    def validate
        ### TODO: VALIDATES EMAIL AND PASSWORD IN DB ###
        # Email is params[:email]
        # Password is params[:password]
        p params[:email]
        p params[:password]

        redirect_to action: :index
    end
end
