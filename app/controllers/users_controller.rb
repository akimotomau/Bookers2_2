class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
    @user = User.find([:id])
  end
  
  def update
    @user = User.find([:id])
    if @user.update
      flassh[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else 
      render edit_user_path
    end
  end
end
