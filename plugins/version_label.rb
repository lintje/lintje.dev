module VersionLabel
  def version_label(version)
    raw(<<~HTML)
      <div class="version-label" title="This feature was added in version #{version}.">
        Version #{version}
      </div>
    HTML
  end
end

Bridgetown::RubyTemplateView::Helpers.include VersionLabel
