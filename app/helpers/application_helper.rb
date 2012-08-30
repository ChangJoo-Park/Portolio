module ApplicationHelper
	def admin?
		true
	end
  def full_title(page_title)
    base_title = "-"
    if page_title.empty?
      base_title
    else
      "#{page_title}"
    end
  end
end
