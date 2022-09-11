require "digest"

module PageMetadata
  def canonical_url_for(resource)
    return unless resource.destination

    resource.destination.absolute_url
  end

  def canonical_url
    canonical_url_for(view.resource)
  end

  def page_meta_description
    if view.resource.data.description
      view.resource.data.description
    else
      site.metadata.description
    end
  end

  def image_path(path)
    file_checksum = Digest::MD5.file(File.join("src", path))
    "/#{path}?#{file_checksum}"
  end

  def apple_touch_icon_path
    absolute_url image_path("images/apple-touch-icon.png")
  end

  def default_social_image_url
    absolute_url image_path("images/social-media.png")
  end

  def article?
    collection = view.resource.collection
    collection && collection.label == "posts"
  end

  def twitter_card_type
    "summary"
  end

  def csp_policy
    script_src =
      if Bridgetown.env.development?
        "'unsafe-inline'"
      else
        "'sha256-#{sha256_for plausible_script}' 'sha256-#{sha256_for plausible_404_script}'"
      end
    raw "default-src 'none'; script-src 'self' https://plausible.io #{script_src}; connect-src 'self' https://plausible.io; img-src 'self'; style-src 'self' 'unsafe-inline'; font-src 'self'; base-uri 'self'; form-action 'self'"
  end

  def plausible_script
    "window.plausible = window.plausible || function() { (window.plausible.q = window.plausible.q || []).push(arguments) }"
  end

  def plausible_404_script
    %(plausible("404",{ props: { path: document.location.pathname } });)
  end

  def sha256_for(script)
    Digest::SHA256.base64digest(script)
  end

  # Get the last modified date by asking Git for this time.
  # The modified date for the file on the file system doesn't indicate when it
  # was last changed in a meaningful way, only saved.
  def file_last_modified_at(path)
    date = `git log -n 1 --pretty="%cI" "#{path}"`
    Time.parse(date) if date.present?
  end
end

Bridgetown::RubyTemplateView::Helpers.include PageMetadata
