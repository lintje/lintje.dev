module TitleHelper
  def site_title
    site.metadata.title
  end

  def page_title
    resource = view.resource
    full_title = resource.data.full_title
    title = resource.data.title
    if full_title
      full_title
    elsif title
      "#{title} | #{site_title}"
    else
      site_title
    end
  end
end

Bridgetown::RubyTemplateView::Helpers.include TitleHelper
