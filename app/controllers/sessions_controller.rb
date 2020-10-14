class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to todo_lists_path
        else 
            flash[:errors] = ["Invalid combination"]
            redirect_back(fallback_location: root_path) 
        end       
    end

    def destroy
        reset_session
        redirect_to :root
    end
end