class ChoirMembersController < ApplicationController

    def new
        @choir_member = ChoirMember.new
    end

    def create
        @choir_member = ChoirMember.new(choir_member_params)
        if @choir_member.save
            session[:choir_member_id] = @choir_member.id
            redirect_to choir_members_path
        else
            flash.now[:messages] = @choir_member.errors.full_messages
            render 'new'
        end
    end

    def show
        find_choir_member
    end

    def index
        @choir_members = ChoirMember.order('name ASC')
    end

    def edit
        find_choir_member
        if current_login == @choir_member
            render 'edit'
        else
            redirect_to choir_members_path
        end
    end
    
    def update
        find_choir_member
        if @choir_member.update(choir_member_params)
        redirect_to choir_member_path
        else 
            flash.now[:messages] = @choir_member.errors.full_messages
            render 'edit'
        end
    end

    private

    def find_choir_member
        @choir_member = ChoirMember.find(params[:id])
    end

    def choir_member_params
        params.require(:choir_member).permit(:name, :email, :password, :password_confirmation, :voice, :height, :home_locale, :age, :phone_number, :district)
    end
end
