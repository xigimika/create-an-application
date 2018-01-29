class BooksController < ApplicationController

  def top
  end


  def create
  	book = Book.new(book_params)
    book.user_id = current_user.id
  	book.save
  	redirect_to books_path
  end

  def index
    @users = User.all
    @books = Book.all
    @book = Book.new
  end

  def show
  	@books = Book.all
  	@book = Book.new
  end

  def topic
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
  	@book.update(book_params)
  	redirect_to book_path(@book.id)
  end

  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy
  	redirect_to books_path
  end


  	private

  	def book_params
  		params.require(:book).permit(:title, :body)
  	end

end
