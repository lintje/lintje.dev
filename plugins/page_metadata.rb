require "digest"

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

  def csp_policy
    if Bridgetown.env.development?
      script_src = " 'unsafe-inline'"
      style_src = " 'unsafe-inline'"
    else
      script_src = " 'sha256-#{plausible_script_sha256}'"
    end
    raw "default-src 'none'; script-src 'self' https://plausible.io #{script_src}; connect-src 'self' https://plausible.io; img-src 'self'; style-src 'self'#{style_src}; base-uri 'self'; form-action 'self'"
  end

  def plausible_script
    "window.plausible = window.plausible || function() { (window.plausible.q = window.plausible.q || []).push(arguments) }"
  end

  def plausible_script_sha256
    Digest::SHA256.base64digest(plausible_script)
  end
end

Bridgetown::RubyTemplateView::Helpers.include PageMetadata
