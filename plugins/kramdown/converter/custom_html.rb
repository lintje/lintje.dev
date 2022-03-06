module Kramdown
  class Converter::CustomHtml < Converter::Html
    def convert_header(el, indent)
      # Calling super here is not what we want, because I want to modify how
      # the heading is generated, rather than modify the returned HTML, which
      # will be less reliable.
      # Source:
      # https://kramdown.gettalong.org/rdoc/Kramdown/Converter/Html.html#method-i-convert_header
      attr = el.attr.dup
      if @options[:auto_ids] && !attr["id"]
        attr["id"] = generate_id(el.options[:raw_text])
      end

      # Add to table of contents if using the right heading level
      if attr["id"] && in_toc?(el)
        @toc << [el.options[:level], attr["id"], el.children]
      end
      level = output_header_level(el.options[:level])

      # Wrap the heading in an anchor tag so clicking on it will create a direct
      # link to that heading.
      #
      # The `inner` method will recursively generate any given markdown as HTML.
      # The `format_as_span_html` method wraps the heading in the anchor tag.
      link = format_as_span_html(
        "a",
        { "href" => "##{attr["id"]}" },
        inner(el, indent) + format_as_span_html("span", {}, "")
      )
      format_as_block_html("h#{level}", attr, link, indent)
    end
  end
end
