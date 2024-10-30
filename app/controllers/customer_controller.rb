class CustomerController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_customer, only: %i[show]

  def index
    @scheduling = Scheduling.new
  end

  def show
  end

  private

  def set_customer
    @customer = current_customer
  end
end
