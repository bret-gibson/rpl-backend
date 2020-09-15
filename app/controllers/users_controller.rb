class UsersController < ApplicationController
    def index
      users = User.all
      render json: users.to_json
    end
  
    def show
      user = User.find(params[:id])
      render json: user.to_json
  
    def create
      user = User.create(username: params[:username])
      render json: user.to_json
    end

    def create
        @user = User.create(username: params[:username], password: params[:password], avatar: params[:avatar])
        if @user.valid?
          @token = encode(user_id: @user.id)
        end
        render json: @user.to_json
  
      end
  
  end
  