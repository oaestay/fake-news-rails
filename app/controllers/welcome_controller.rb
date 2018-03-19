class WelcomeController < ApplicationController
  def index
    @last_news = Entry.first(10)
  end
end
