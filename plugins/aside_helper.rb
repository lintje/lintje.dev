module AsideHelper
  def aside(&block)
    view.render(AsideComponent.new, &block)
  end
end

Bridgetown::RubyTemplateView::Helpers.include AsideHelper
