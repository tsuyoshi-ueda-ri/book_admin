class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]
  
  def show
    respond_to do |format|
      format.html 
      format.json 
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

end
