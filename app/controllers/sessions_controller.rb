class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_home_path(@user)
        else
            redirect_to login_path, alert: "Wrong password"
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end