class Builders::TableOfContents < SiteBuilder
  def build
    helper "toc", :toc_template
  end

  def toc_template(title: true)
    title_label =
      if title
        "## #{title == true ? "Table of Contents" : title}\n"
      else
        ""
      end
    <<~MD
      #{title_label}{:.no_toc}
      * …
      {:toc}
    MD
  end
end
