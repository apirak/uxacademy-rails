class WelcomeController < ApplicationController
  def index
    @events = Event.limit(6)
    @alumnis = Alumni.all
  end
end
