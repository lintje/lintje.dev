module VersionLabel
  def latest_version
    site.metadata.latest_version
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
          "This feature was added in version #{version}."
        ]
      else
        [
          "📦 Not yet released",
          "This feature is not yet release"
        ]
      end
    label(message, title)
  end
end

Bridgetown::RubyTemplateView::Helpers.include VersionLabel
