class UserController < ApplicationController
    # before_filter :authorize

    def show
        @user = User.find(params[:id])
    end

    def new
    end

    def create
        @user = User.new(user_params)

        if @user.save
          session[:user_id] = @user.id
          redirect_to @user
        else
          redirect_to '/signup'
        end
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :zip_code, :birthdate, :career_status)
        end
end
