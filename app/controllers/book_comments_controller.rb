class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    book_comment = current_user.book_comments.new(book_id: book.id)
    book_comment.save
    redirect_to request.referere
  end
   
  def destroy
   BookComment.find(params[:id]).destroy
    redirect_to request.referere
  end
   
  
private
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
  
end
