class BooksController < ApplicationController
  
  def index
    if params[:q].present?
      search
      @result = "検索結果" + @book.size
    else
      @books = Book.all
      @rec = 0
      @result = ""
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end

  def create
    # render plain: params[:book].inspect 
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      #render plain: @book.errors.inspect 
      render :new
    end
  end    
  

  def search
    @books = Book.search(params[:q])
    @rec= @books.length
    render :index
  end
  
  private
    def book_params
      params.require( :book).permit( :product_id, :aouthor_id, :publisher_id, :title, :price, :category_id)
    end
    
    def nil_check(obj)
      if obj.nil?
        return true;
      end
    end
  
end
