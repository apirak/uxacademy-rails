class OrdersController < ApplicationController
  def new
    @order = Order.new(order_params)
    @event = @order.event
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @event = @order.event

    # Charge 1000.00 THB
    charge = Omise::Charge.create({
      amount: 1_000_00,
      currency: "thb",
      card: params[:omiseToken]
    })

    if charge.paid
      # handle success
      puts "thanks"
    else
      # handle failure
      raise charge.failure_code
    end

    respond_to do |format|
      if @order.save
        format.html { render :show, notice: 'Order was successfully create' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def order_params
      params.require(:order).permit(:name, :email, :phone, :condition, :wht, :company_name, :company_address, :company_tax_id, :ticket_early_bird, :ticket_regular, :ticket_last_ticket, :payment_status, :payment_id, :payment_total, :payment_method, :payment_description, :payment_date, :event_id)
    end
end

