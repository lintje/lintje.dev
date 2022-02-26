module PageMetadata
  def canonical_url
    view.resource.destination.absolute_url.sub(/\/$/, "")
  end

  def page_meta_description
    if view.resource.data.description
      view.resource.data.description
    else
      site.metadata.description
    end
  end

  def default_social_image_url
    "TODO"
  end

  def article?
    collection = view.resource.collection
    collection && collection.label == "posts"
  end

  def twitter_card_type
    "summary"
  end
end

Bridgetown::RubyTemplateView::Helpers.include PageMetadata
