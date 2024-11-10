# frozen_string_literal: true

class NavbarComponent < ViewComponent::Base
  def initialize(links: [], resource: nil)
    @links = links
    @resource = resource
  end
end
