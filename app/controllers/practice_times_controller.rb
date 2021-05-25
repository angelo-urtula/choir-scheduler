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
            @practice_time = PracticeTime.new(choir_leader_id: params[:choir_leader_id])
        else 
            redirect_to practice_times_path
        end
    end
    
    def create
        practice = PracticeTime.create(practice_time_params)
        redirect_to practice_times_path
    end

    def edit
        if admin_logged_in?
            find_practice
        else
            redirect_to practice_times_path
        end
    end

    def show
        find_practice
        if user_logged_in?
        @choir_member = current_login
        end
    end

    def update
        find_practice
        @practice_time.update(practice_time_params)
        redirect_to practice_times_path
    end 

    def destroy
        if admin_logged_in?
            PracticeTime.find(params[:id]).destroy
            redirect_to practice_times_path
        else
            redirect_to practice_times_path
        end
    end

    private

    def practice_time_params
        params.require(:practice_time).permit(:choir_leader_id, :choir_member_id, :language, :time, :locale, :hymns)
    end

    def find_practice
        @practice_time = PracticeTime.find(params[:id])
    end
end