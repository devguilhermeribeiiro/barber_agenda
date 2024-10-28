# frozen_string_literal: true
class HeaderComponent < ViewComponent::Base
  def initialize(path:)
    @path = path
  end
end
