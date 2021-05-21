module SessionsHelper

    def current_login
        if user_logged_in?
        ChoirMember.find(session[:choir_member_id])
        elsif admin_logged_in?
        ChoirLeader.find(session[:choir_leader_id])
        end
    end

    def user_logged_in?
        !!session[:choir_member_id]
    end

    def admin_logged_in?
        !!session[:choir_leader_id]
    end

    def log_out
        session.clear
    end
end