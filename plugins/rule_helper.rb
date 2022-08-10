module RuleHelper
  def rule_resources
    site.collections.rules.resources
  end

  def rule_path(name)
    type_path =
      if name.start_with? "Subject"
        "commit-subject"
      elsif name.start_with? "Message"
        "commit-message"
      elsif name.start_with? "Branch"
        "branch"
      else
        "commit-type"
      end
    "/docs/rules/#{type_path}/##{name.downcase}"
  end

  def rule_type_icon_with_label(type)
    case type
    when "error"
      %(<span aria-hidden="true">⚠️ </span> Error)
    when "hint"
      %(<span aria-hidden="true">ℹ️ </span> Hint)
    else
      raise "Unknown issue type `#{type}`"
    end
  end

  def rule_type_description(type)
    case type
    when "error"
      "This error needs to be resolved for Lintje to approve the commit."
    when "hint"
      "This hint does not need to be resolved for Lintje to approve the commit."
    else
      raise "Unknown issue type `#{type}`"
    end
  end

  def render_markdown_link_references_for_links
    rule_resources.map do |resource|
      name = resource.data.name
      "[#{name}]: #{rule_path name}"
    end.join("\n")
  end
end

Bridgetown::RubyTemplateView::Helpers.include RuleHelper
