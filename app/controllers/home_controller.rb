class HomeController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_barber, only: %i[ show new ]

  def index
    @barbers = Barber.all
    @schedulings = current_customer.schedulings.sort_by(&:created_at).reverse
  end

  def show
  end

  def new
    @scheduling = Scheduling.new
  end

  def create
    @scheduling = Scheduling.new(scheduling_params)
    @scheduling.customer_id = current_customer.id

    if @scheduling.save
      redirect_to home_path(current_customer.id), notice: "Scheduling successfully created"
    else
      render :new
    end
  end

  private

  def set_barber
    @barber = Barber.find(params[:id])
  end

  def scheduling_params
    params.require(:scheduling).permit(%i[ date time barber_id ])
  end
end
