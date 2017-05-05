class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_date, :period, :max_price, :low_price, :url)
    end

end
