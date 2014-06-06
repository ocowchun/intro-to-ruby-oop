class Browser

  def initialize name,actions={}
    @name=name
    @actions=actions
  end

  def excute_action(action_name,url)
    @actions[action_name].excute url
  end
end


class Favorite
  def excute url
    puts "add #{url} to favorite"
  end
end

class Browse
  def excute url
    puts "browse #{url}"
  end
end

actions={browse:Browse.new,favorite:Favorite.new}
chrome=Browser.new "chrome",actions
chrome.excute_action(:favorite,"facebook.com")
