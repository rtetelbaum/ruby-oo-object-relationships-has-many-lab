class Author
    attr_accessor :name

    @@authors = []

    def initialize(name)
        @name = name
        @@authors << self
    end

    def self.authors
        @@authors
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def posts
        Post.all.find_all { |post| post.author == self }
    end

    def self.post_count
        Post.all.count
    end
end