class ChoirMembersController < ApplicationController

    def new
        @choir_member = ChoirMember.new
    end

    def create
        @choir_member = ChoirMember.new(choir_member_params)
        if @choir_member.save
            redirect_to choir_members_path
        else
            render 'new'
        end
    end

    def edit
        @choir_member = ChoirMember.find(params[:id])
    end

    def show
        @choir_member = ChoirMember.find(params[:id])
    end

    def index
        @choir_members = ChoirMember.all
    end

    def choir_member_params
        params.require(:choir_member).permit(:name, :email, :password, :password_confirmation, :voice, :height, :home_locale, :age, :phone_number, :district)
      end
end
