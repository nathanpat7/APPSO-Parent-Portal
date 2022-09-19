class LoginController < ApplicationController
    def index
    
    end

    def validate
        ### TODO: VALIDATES EMAIL AND PASSWORD IN DB ###
        # Email is params[:email]
        # Password is params[:password]
        p params[:email]
        p params[:password]
        if Member.where(:email => params[:email], :notes => params[:password]).blank? 
            redirect_to '/login'
        else
            redirect_to '/home/index'
        end
    end
end
