class UsersController < ApplicationController
  def show
    @book = Book.new
    @my_books = Book.where(user_id: current_user.id)
  end
  
  def index
  end
  
end
