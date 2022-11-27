class UsersController < ApplicationController
    def show 
        users = User.find_by(id: params[:id])
        render json: users, include: :items
    end
end
