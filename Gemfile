source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
# gem "jekyll", "~> 4.3.1"  # for using hydejack on local site
gem "jekyll", "~> 3.8"  # for using hydejack on github pages site

# This is the default theme for new Jekyll sites. You may change this to anything you like.
# gem "minima", "~> 2.5"  # default jekyll theme
# gem "jekyll-theme-hydejack"  # hydejack jekyll theme
gem "jekyll-theme-hydejack", path: "./#jekyll-theme-hydejack"  # hydejack pro jekyll theme

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and uncomment the line below.
# To upgrade, run `bundle update github-pages`. And if you have any plugins, put them here!
group :jekyll_plugins do
  # Hydejack for GitHub Pages running plugins on local site
  gem "github-pages"
  gem "jekyll-include-cache"
  
  # Hydejack running plugins on local site
  gem "jekyll-default-layout"
  gem "jekyll-feed"
  gem "jekyll-optional-front-matter"
  gem "jekyll-paginate"
  gem "jekyll-readme-index"
  gem "jekyll-redirect-from"
  gem "jekyll-relative-links"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
  gem "jekyll-titles-from-headings"
  gem "kramdown-syntax-coderay"
  gem "faraday-retry"
  gem "jekyll-avatar"
  
  # Non-Github Pages plugins
  gem "jekyll-last-modified-at"
  gem "jekyll-compose"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]

# Jekyll <= 4.2.0 compatibility with Ruby 3.0
gem "webrick"

# The followign gem is used to compile math formulas to KaTeX during site building.
#
# There are a couple of things to know about this gem:
# *  It is not supported on GitHub Pages. 
#    You have to build the site on your machine before uploading to GitHub,
#    or use a more permissive cloud building tool such as Netlify.
# *  You need some kind of JavaScript runtime on your machine.
#    Usually installing NodeJS will suffice. 
#    For details, see <https://github.com/kramdown/math-katex#documentation>
#
# If you're using the MathJax math engine instead, free to remove the line below:
gem "kramdown-math-katex"

# A JavaScript runtime for ruby that helps with running the katex gem above.
gem "duktape"
