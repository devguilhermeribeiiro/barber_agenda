class CustomerController < ApplicationController
  before_action :authenticate_customer!
  before_action [ :set_customer, :set_barber ], only: %i[show]

  def index
    @scheduling = Scheduling.new
    @barbers = Barber.all
  end

  def show
  end

  private

  def set_customer
    @customer = current_customer
  end

  def set_barber
    @barber = Barber.find(params[:id])
  end
end
