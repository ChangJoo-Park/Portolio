module ApplicationHelper
	def admin?
		true
	end
  def full_title
    base_title = "Portolio"
    if Setting.empty?
      base_title
    else
      base_title+" - #{page_title}"
    end
  end
  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      CodeRay.scan($3, $2).div(:css => :class)
    end
  end

end
