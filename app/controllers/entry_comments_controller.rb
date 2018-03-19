class EntryCommentsController < ApplicationController
  def new
    @entry_comment = EntryComment.new
  end

  def create
    @entry_comment = EntryComment.create!(entry_comments_params)
    redirect_to @entry_comment.entry
  end

  private

  def entry_comments_params
    params[:comment_entry].permit(:author, :body, :entry_id)
  end
end
