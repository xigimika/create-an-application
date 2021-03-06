class UsersController < ApplicationController

  def index
	@users = User.all
	@book = Book.new
  end

  def show
 	@books = Book.all
    @book = Book.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to books_path
  end

  private
   def user_params
    params.require(:user).permit(:name, :image, :introduction)
   end
end
