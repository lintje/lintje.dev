module DateTimeFormatter
  def format_date(date)
    date.strftime("%Y-%m-%d")
  end

  def display_date(date)
    date.strftime("%e %B, %Y")
  end
end

Bridgetown::RubyTemplateView::Helpers.include DateTimeFormatter
