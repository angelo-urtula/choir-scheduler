class ServiceTimesController < ApplicationController
    def index
        if params[:choir_leader_id]
            @service_times = ChoirLeader.find(params[:choir_leader_id]).service_times
        else
            @service_times = ServiceTime.order('time ASC')
        end
    end

    def new
        if admin_logged_in?
            @service_time = ServiceTime.new(choir_leader_id: params[:choir_leader_id])
        else 
            redirect_to service_times_path
        end
    end
    
    def create
        service = ServiceTime.create(service_time_params)
        redirect_to service_times_path
    end

    def edit
        if admin_logged_in?
            find_service
        else
            redirect_to service_times_path
        end
    end

    def show
        find_service
    end

    def update
        find_service
        @service_time.update(service_time_params)
        redirect_to service_times_path
    end

    private

    def service_time_params
        params.require(:service_time).permit(:choir_leader_id, :choir_member_id, :language, :time, :locale, :hymns)
    end

    def find_service
        @service_time = ServiceTime.find(params[:id])
    end
end