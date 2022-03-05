module VersionLabel
  def version_label(version)
    latest_verison = Gem::Version.new(site.metadata.latest_version)
    release_version = Gem::Version.new(version)
    if latest_verison >= release_version
      raw(<<~HTML)
        <div class="version-label" title="This feature was added in version #{version}.">
          Version #{version}
        </div>
      HTML
    else
      raw(<<~HTML)
        <div class="version-label" title="This feature is not yet release">
          📦 Not yet released
        </div>
      HTML
    end
  end
end

Bridgetown::RubyTemplateView::Helpers.include VersionLabel
