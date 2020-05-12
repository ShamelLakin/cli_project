class Article

    attr_accessor :source, :title, :published, :author, :content

    @@all = []

    def initialize(source, author, title, content, published)
        @source = source
        @author = author
        @title = title
        @content = content
        @published = published
        @@all << self
    end 

    def self.all
        @@all
    end 

end 

## responsible for making articles