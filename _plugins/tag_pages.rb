# Builds /tags/<slug>/ for every tag used by a post. Needs a custom build
# (GitHub Actions); the stock GitHub Pages build ignores _plugins.
module TagPages
  class Generator < Jekyll::Generator
    safe true

    def generate(site)
      site.tags.each do |tag, posts|
        slug = Jekyll::Utils.slugify(tag)
        page = Jekyll::PageWithoutAFile.new(site, site.source, File.join("tags", slug), "index.html")
        page.data["layout"] = "tag"
        page.data["title"] = tag
        page.data["tag"] = tag
        page.data["posts"] = posts
        page.data["permalink"] = "/tags/#{slug}/"
        site.pages << page
      end
    end
  end
end
