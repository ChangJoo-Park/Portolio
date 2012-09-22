module ApplicationHelper
	def admin?
		true
	end
  def full_title
    base_title = "Empty"
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
  def nl2br(s)
    s.gsub(/\n/, '<br>')
  end


end
