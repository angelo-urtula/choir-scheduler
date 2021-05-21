module SessionsHelper

    def current_user
        ChoirMember.find(session[:choir_member_id])
    end

    def logged_in?
        !!session[:choir_member_id]
    end

    def log_out
        session.delete(:choir_member_id)
    end
        
end