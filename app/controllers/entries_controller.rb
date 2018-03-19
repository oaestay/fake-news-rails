class EntriesController < ApplicationController
  respond_to :html, :xml, :json

  before_action :set_entry, only: :show

  def index
    respond_with @entries = Entry.all.page(params[:page])
  end

  def show
    respond_with @entry
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end
end
