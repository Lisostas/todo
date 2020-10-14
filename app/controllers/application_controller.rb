class ApplicationController < ActionController::Base
    add_flash_types :error

    def current_user
        User.find(session[:user_id]) if session[:user_id]
    end

    def require_login
        unless session[:user_id]
            flash[:errors] = ["You must login first"]
            redirect_to root_path
        end
    end
end
