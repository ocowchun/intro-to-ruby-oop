class Browser

  def initialize name
    @name=name
  end

  def browse url
    puts "browse #{url}"
  end

  def add_to_favorite url
    puts "add #{url} to favorite"
  end

  def pocket url
    puts "pocket #{url}"
  end
end


class Action

  def excute

  end

end

chrome=Browser.new "chrome"
chrome.browse "facebook.com"
