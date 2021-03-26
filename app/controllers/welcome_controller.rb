class WelcomeController < ApplicationController

    def homepage
        if logged_in?
            @user = User.find_by_id(session[:user_id])
        else
            redirect_to login_path, alert: "Log in first fam"
        end
    end

end