class BooksController < ApplicationController
  
  def index
    if params[:q].present?
      search
    else
      @books = Book.all
      @rec = 0
    end
  end
  
  def search
    @books = Book.search(params[:q])
    if !(@rec.nil?)
      @rec = Book.count.to_int
    end
    render "index"
  end  
  
end
