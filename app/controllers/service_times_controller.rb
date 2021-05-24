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

    def service_time_params
        params.require(:service_time).permit(:choir_leader_id, :choir_member_id, :language, :time, :locale, :hymns)
    end
end