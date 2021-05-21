class SessionsController < ApplicationController
    def omniauth
        user = ChoirMember.create_from_omniauth(auth)
        if user.valid?
            session[:choir_member_id] = user.id
            redirect_to choir_members_path
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to choir_members_path
        end
    end

    def new
    end

    def create
        @user = ChoirMember.find_by(:email => params[:email].downcase)
        if @user && @user.authenticate(params[:password])
            session[:choir_member_id] = @user.id
            redirect_to choir_members_path
        else
            flash.now[:danger] = 'Incorrect email and/or password'
            render '/sessions/login'
        end
    end

    def destroy
        log_out
        redirect_to root_url
    end

    private

    def auth 
        request.env['omniauth.auth']
    end
end