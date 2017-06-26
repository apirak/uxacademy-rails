class WelcomeController < ApplicationController
  def index
    @events = Event.last(6)
    @alumnis = Alumni.all
  end
end
