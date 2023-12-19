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
    @book = Book.new(params[:id])
    @book.save
    redirect_to books_path(@book)
  end


  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :user_id)
  end

end
