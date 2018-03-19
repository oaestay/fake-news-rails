class EntriesController < ApplicationController
  before_action :set_entry, only: :show

  def index
    @entries = Entry.all.includes(:entry_comments).page(params[:page])
  end

  def show
    @entry
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end
end
