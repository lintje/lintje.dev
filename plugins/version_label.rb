module VersionLabel
  def label(message, title)
    raw(<<~HTML)
      <div class="label" title="#{title}">#{message}</div>
    HTML
  end

  def version_label(version)
    latest_verison = Gem::Version.new(site.metadata.latest_version)
    release_version = Gem::Version.new(version)
    message, title =
      if latest_verison >= release_version
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
