class SessionsController < ApplicationController
    def omniauth
        user = ChoirMember.create_from_omniauth(auth)
        if user.valid?
            session[:choir_member_id]
            redirect_to choir_members_path
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to choir_members_path
        end
    end

    private

    def auth 
        request.env['omniauth.auth']
    end
end