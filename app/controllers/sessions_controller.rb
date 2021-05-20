class SessionsController < ApplicationController
    def omniauth
        user = ChoirMember.create_from_omniauth(auth)
        if user.valid?
            session[:choir_id]
            redirect_to new_choir_member_path
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