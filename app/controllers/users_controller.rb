class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(email: params[:user][:email], password: BCrypt::Password.create(params[:user][:password]), name: params[:user][:name], address: params[:user][:address], number: params[:user][:number])
        if @user.save
            flash[:notice] = "登録が完了しました"
            redirect_to top_login_path
        else
            render new_user_path
        end
    end
    
    def show
        @user = current_user
    end
    
    def edit
        @user = current_user
    end
    
    def update
        user = current_user
        user.update(name: params[:user][:name],email: params[:user][:email],address: params[:user][:address],number: params[:user][:number])
        redirect_to products_path
    end
    
end

