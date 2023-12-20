class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save
    redirect_to books_path(@book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    # @book.user = current_user
    @book.destroy
    redirect_to books_path(@book), status: :see_other
  end


  private


  def book_params
    params.require(:book).permit(:title, :author, :description, :user_id, :photo)
  end

end
