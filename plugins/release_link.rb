module ReleaseLink
  def release_link(version)
    raw(<<~HTML)
      <a href="https://github.com/tombruijn/lintje/releases/tag/v#{version}">View release #{version}</a>
    HTML
  end
end

Bridgetown::RubyTemplateView::Helpers.include ReleaseLink
