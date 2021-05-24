class ServiceTimesController < ApplicationController
    def index
        @service_times = ServiceTime.order('time ASC')
    end

    def new
        @service_time = ServiceTime.new
    end
    
    def create
        ServiceTime.create(service_time_params)
        redirect_to service_times_path
    end

    def edit
        find_service
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