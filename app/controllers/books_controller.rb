class BooksController < ApplicationController
  def top
  end
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end


  def create
  	@book = Book.new(book_params)
  	if @book.save
      redirect_to book_path(@book), notice: 'Book was successfully created.'
    else
      @books = Book.all
      render :index, notice: 'error'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to book_path(@book), notice: 'Book was successfully created.'
    else
      render :edit, notice: 'error'
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
