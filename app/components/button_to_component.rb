# frozen_string_literal: true

class ButtonToComponent < ViewComponent::Base
  def initialize(name, path, method)
    @name = name
    @path = path
    @method = method
  end
end
