class PracticeTimesController < ApplicationController
    def index
        if params[:choir_leader_id]
            @practice_times = ChoirLeader.find(params[:choir_leader_id]).practice_times
        else
            @practice_times = PracticeTime.order('time ASC')
        end
    end

    def new
        if admin_logged_in?
            @Practice_time = PracticeTime.new(choir_leader_id: params[:choir_leader_id])
        else 
            redirect_to Practice_times_path
        end
    end
    
    def create
        Practice = PracticeTime.create(Practice_time_params)
        redirect_to Practice_times_path
    end

    def edit
        if admin_logged_in?
            find_Practice
        else
            redirect_to Practice_times_path
        end
    end

    def show
        find_Practice
    end

    def update
        find_Practice
        @Practice_time.update(Practice_time_params)
        redirect_to Practice_times_path
    end

    private

    def Practice_time_params
        params.require(:Practice_time).permit(:choir_leader_id, :choir_member_id, :language, :time, :locale, :hymns)
    end

    def find_Practice
        @Practice_time = PracticeTime.find(params[:id])
    end
end