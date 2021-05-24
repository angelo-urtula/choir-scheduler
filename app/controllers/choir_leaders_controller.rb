class ChoirLeadersController < ApplicationController
    def show
        @choir_leader = ChoirLeader.find(params[:id])
    end

    def index
        @choir_leaders = ChoirLeader.order('name ASC')
    end
end