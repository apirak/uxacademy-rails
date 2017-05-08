class OrdersController < ApplicationController
  before_action :set_event, only: [:show]

  def new
    @order = Order.new(order_params)
    @event = @order.event
  end

  def payment
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { render :payment, notice: 'Order was successfully create' }
      else
        format.html { render :new}
      end
    end
  end

  private
    def set_event
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name, :email, :phone, :condition, :wht, :company_name, :company_address, :company_tax_id, :ticket_early_bird, :ticket_regular, :ticket_last_ticket, :payment_status, :payment_id, :payment_total, :payment_method, :payment_description, :payment_date, :event_id)
    end
end

