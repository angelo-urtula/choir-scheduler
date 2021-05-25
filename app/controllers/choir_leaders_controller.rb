class ChoirLeadersController < ApplicationController
    def show
        find_choir_leader
    end

    def index
        @choir_leaders = ChoirLeader.order('name ASC')
    end

    def edit
        find_choir_leader
        if current_login == @choir_leader
            render 'edit'
        else
            redirect_to choir_leaders_path
        end
    end

    def update
        find_choir_leader
        if @choir_leader.update(choir_leader_params)
            redirect_to choir_leader_path
        else 
            flash.now[:messages] = @choir_leader.errors.full_messages
            render 'edit'
        end
    end

    private

    def find_choir_leader
        @choir_leader = ChoirLeader.find(params[:id])
    end 

    def choir_leader_params
        params.require(:choir_leader).permit(:name, :password, :password_confirmation, :home_locale, :email, :phone_number, :district, :voice)
    end
end