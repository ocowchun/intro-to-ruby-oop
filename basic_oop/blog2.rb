##mixins
require "./tweetable"
module Blog

  class Post
    include Tweetable
    attr_reader :author,:title,:body,:comments

    def initialize options
      @author=options[:author]
      @title=options[:title]
      @body=options[:body]
      @comments=options[:comments]||[]
    end

    def insert_comment comment
      @comments<<comment
    end

  end

  class Comment
    include Tweetable
    attr_accessor :user,:body

    def initialize options
      @user= options[:user]
      @body=options[:body]
    end
  end

end


b=Blog::Post.new author:"ocowhuh",title:"hello word",body:"this is my first post"
b.insert_comment Blog::Comment.new user:"ocwochun",body:"amazing"
b.insert_comment Blog::Comment.new user:"ocwochun",body:"amazing1"

puts b.comments[1].tweet
