class ServiceTimesController < ApplicationController
    def index
        @service_times = ServiceTime.all
    end
end