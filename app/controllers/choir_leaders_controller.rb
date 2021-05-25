class ChoirLeadersController < ApplicationController
    def show
        @choir_leader = ChoirLeader.find(params[:id])
    end

    def index
        @choir_leaders = ChoirLeader.order('name ASC')
    end

    def edit
        @choir_leader = ChoirLeader.find(params[:id])
        if current_login == @choir_leader
            render 'edit'
        else
            redirect_to choir_leaders_path
        end
    end

    def update
        @choir_leader = ChoirLeader.find(params[:id])
        @choir_leader = ChoirLeader.update(choir_leader_params)
        redirect_to choir_leader_path
    end

    private

    def choir_leader_params
        params.require(:choir_leader).permit(:name, :password, :home_locale, :email, :phone_number, :district, :voice)
    end
end