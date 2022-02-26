module ActiveLink
  def link_to_active(label, path, selector = nil)
    classes = "active" if current_path?(selector || path)
    link_to label, path, { :class => classes }
  end

  def current_path
    path = view.resource.destination.relative_url
    if path.length > 1
      path.sub(/\/$/, "")
    else
      path
    end
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
