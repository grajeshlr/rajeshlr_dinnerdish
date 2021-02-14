class UsersController < ApplicationController

    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        @image = user_params[:avatar]
        uploader_checker(@image) if @image
        @user[:avatar_file_name] = @avatar_url
        if @user.save
          log_in @user
          flash[:success] = "Welcome #{user_params[:first_name]} to dinner dash!"
          MailerWorker.perform_async(@user.id)
          redirect_to root_path
        else
          flash[:error] = "One or more required fields are missing"
          render "new"
        end
      end










end
