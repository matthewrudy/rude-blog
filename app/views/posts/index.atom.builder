atom_feed do |feed|
      feed.title("Ma tai zai Zhong Guo")
      feed.updated((@posts.first.created_at))

      for post in @posts
        feed.entry(post) do |entry|
          entry.title(post.title)
          entry.content(simple_format(post.body), :type => 'html')

          entry.author do |author|
            author.name("Matthew Rudy Jacobs")
          end
        end
      end
    end

