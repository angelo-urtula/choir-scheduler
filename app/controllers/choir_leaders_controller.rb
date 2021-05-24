class ChoirLeadersController < ApplicationController
    def show
        @choir_leader = ChoirLeader.find(params[:id])
    end
end