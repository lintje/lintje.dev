module ActiveLink
  def link_to_active(label, path, selector = nil)
    options = {}
    options[:class] = "active" if current_path?(selector || path)
    link_to label, path, options
  end

  def current_path
    return unless view.resource.destination

    view.resource.destination.relative_url
  end

  def current_path?(selector)
    if selector.is_a? Regexp
      current_path =~ selector
    else
      current_path == selector
    end
  end
end

Bridgetown::RubyTemplateView::Helpers.include ActiveLink
