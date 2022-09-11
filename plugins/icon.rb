module Icon
  def icon(name, options = {})
    svg "/images/#{name}.svg", :class => "icon #{options[:class]}", "aria-hidden" => "true"
  end
end

Bridgetown::RubyTemplateView::Helpers.include Icon
