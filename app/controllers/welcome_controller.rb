class WelcomeController < ApplicationController
  def index
    @events = Event.all
    @alumnis = Alumni.all
  end
end
