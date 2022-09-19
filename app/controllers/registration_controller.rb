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

        ActionController::Parameters.permit_all_parameters = true
        # make somehting for id, admin, and notes
        @member = Member.new(ActionController::Parameters.new(memID: '2', name: (params[:first_name] + " " + params[:last_name]), email: params[:email], officer: '0', notes: ''))
        respond_to do |format|
            if @member.save
                format.html { redirect_to member_url(@member), notice: "Member was successfully created." }
                format.json { render :show, status: :created, location: @member }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @member.errors, status: :unprocessable_entity }
            end
        end
        #<ActionController::Parameters {"memID"=>"2", "name"=>"frankmarti", "email"=>"tamu.edu", "officer"=>"0", "notes"=>""} permitted: false>
        #<ActionController::Parameters {"memID"=>"1", "name"=>"frankmarti", "email"=>"tamu.edu", "officer"=>"0", "notes"=>""} permitted: true>
    end
end
