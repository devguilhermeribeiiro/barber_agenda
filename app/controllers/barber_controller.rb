class BarberController < ApplicationController
  before_action :authenticate_barber!
  before_action :set_barber, only: %i[show index]

  def index; end
  def show; end

  private

  def set_barber
    @barber = current_barber
  end
end
