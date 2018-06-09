# ApplicationHelper allows views to use common methods.
module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    return 'Ruby on Rails Tutorial Sample App' if page_title.empty?

    return "#{page_title} | #{base_title}"
  end
end
