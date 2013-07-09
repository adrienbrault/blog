module GithubEditPost
  def github_edit_post(post)
    if not post
      return ""
    end

    config = Jekyll.configuration({})['github_edit_post']
    repository = config['repository']

    if not config or not repository
      return ""
    end

    branch = config['branch'] || "master"
    path = config['path'] || "source/_posts"

    "https://github.com/#{repository}/edit/#{branch}/#{path}/#{post['date'].strftime('%Y-%m-%d')}-#{post['title'].to_url}.md"
  end
end

Liquid::Template.register_filter(GithubEditPost)
