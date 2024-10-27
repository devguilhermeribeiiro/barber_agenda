class CustomerController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_customer, only: %i[show]
  def show
  end

  private

  def set_customer
    @customer = Customer.find(current_customer.id)
  end
end
