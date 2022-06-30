module VersionLabel
  def latest_version
    site.metadata.latest_version
  end

  def latest_minor_version
    version = Gem::Version.new(site.metadata.latest_version)
    major, minor = version.canonical_segments
    "#{major}.#{minor}"
  end

  def label(message, title)
    raw(<<~HTML)
      <div class="label" title="#{title}">#{message}</div>
    HTML
  end

  def version_label(version)
    latest_verison_object = Gem::Version.new(latest_version)
    release_version_object = Gem::Version.new(version)
    message, title =
      if latest_verison_object >= release_version_object
        [
          "Version #{version}",
          "This feature was added in Lintje version #{version}."
        ]
      else
        [
          "📦 Not yet released",
          "This feature is not yet release"
        ]
      end
    label(message, title)
  end

  def error_label(title = nil)
    label(
      %(<span aria-hidden="true">⚠️ </span>Error),
      title || "This error needs to be resolved for Lintje to approve the commit"
    )
  end

  def hint_label(title = nil)
    label(
      %(<span aria-hidden="true">ℹ️ </span>Hint),
      title || "This hint does not need to be resolved for Lintje to approve the commit"
    )
  end
end

Bridgetown::RubyTemplateView::Helpers.include VersionLabel
