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
        # p Member.maximum(:memID).next
        p params[:id]
        memID = 1
        if Member.maximum(:memID) != nil
            memID = Member.maximum(:memID).next
        end
        ActionController::Parameters.permit_all_parameters = true

        # make somehting admin, and notes
        # FOR NOW THE TEMPORARY PASSWORD IS STORED IN NOTES SECTION OF A MEMBER IN DB
        temporaryPassword = (0...8).map { (65 + rand(26)).chr }.join
        @member = Member.new(ActionController::Parameters.new(memID: memID, name: (params[:first_name] + " " + params[:last_name]), email: params[:email], officer: '0', notes: temporaryPassword))
        
        respond_to do |format|
            if @member.save
                format.html { redirect_to login_url(@member), notice: "Member was successfully created." }
                format.json { render :show, status: :created, location: @member }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @member.errors, status: :unprocessable_entity }
            end
        end
    end
end
