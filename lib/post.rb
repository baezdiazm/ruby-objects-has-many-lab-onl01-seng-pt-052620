require 'pry'
class Post
  attr_accessor :title, :author
  @@all = []
  @@post_count = 0

  def initialize(title)
    @title = title
    @@all << self
    @@post_count += 1
    self.author = Author.name
  end

  def author_name
    if self.author == nil
      #self.author.name
      nil
    else
      self.author.name
    end
  end

  def self.all
    @@all
  end

  def self.post_count
    @@post_count
  end
end
