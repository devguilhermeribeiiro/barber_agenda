# frozen_string_literal: true

class SidebarComponent < ViewComponent::Base
  def initialize(links: [], title: nil)
    @links = links
    @title = title
  end
end
