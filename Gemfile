source "https://rubygems.org"

# Jekyll version
gem "jekyll", "~> 4.3.0"

# Plugins for enhanced functionality
group :jekyll_plugins do
  # RSS feed generation
  gem "jekyll-feed", "~> 0.17"

  # SEO optimization
  gem "jekyll-seo-tag", "~> 2.8"

  # Sitemap generation
  gem "jekyll-sitemap", "~> 1.4"

  # Academic citations and bibliography
  gem "jekyll-scholar", "~> 7.1"

  # Relative links support
  gem "jekyll-relative-links", "~> 0.7"
end

# MathJax support (no gem needed, using CDN)

# Platform-specific gems
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Windows directory watching
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?

# Performance booster
gem "webrick", "~> 1.8"

# Required for Ruby 3.4+
gem "csv"
gem "base64"
gem "bigdecimal"
