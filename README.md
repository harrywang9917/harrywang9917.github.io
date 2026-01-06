# Harry's Blog - Academic Jekyll Blog with Console Theme

A fusion of minimalist console-style design (inspired by jekyll-theme-console) and powerful academic features (from blog-theme-master), creating a clean, professional blog perfect for technical and academic writing.

## ✨ Features

### Design & Style
- 🎨 **Clean Console Aesthetic**: Minimalist terminal-inspired design
- 🌓 **Dark/Light Mode**: Toggle between themes with persistent preference
- 📱 **Responsive**: Mobile-friendly layout
- 🎯 **Focused Reading**: Optimized typography for long-form content

### Academic Features
- 📐 **Mathematics**: Full MathJax support for inline and display equations
- 📚 **Citations**: Jekyll-Scholar for academic bibliography management
- 🔖 **Code Highlighting**: Syntax highlighting for multiple languages
- 📄 **RSS Feed**: Automatic feed generation for subscribers

### Technical
- ⚡ **Fast**: Minimal CSS and JavaScript
- 🔍 **SEO Optimized**: Jekyll-SEO-Tag integration
- 🗺️ **Sitemap**: Automatic sitemap generation
- 🎓 **BibTeX Support**: Academic citation management

## 🚀 Quick Start

### Prerequisites

- Ruby (2.7 or higher)
- RubyGems
- Bundler

### Installation

1. **Clone or navigate to the blog directory**:
```bash
cd /Users/awc789/Downloads/blog/harry-blog-fusion
```

2. **Install dependencies**:
```bash
bundle install
```

3. **Run locally**:
```bash
bundle exec jekyll serve
```

4. **View in browser**:
Open [http://localhost:4000](http://localhost:4000)

## 📝 Configuration

### Site Settings

Edit `_config.yml` to customize your blog:

```yaml
title: "Your Blog Title"
description: "Your blog description"
url: "https://yourusername.github.io"

author:
  name: "Your Name"
  email: "your@email.com"
  github: "yourusername"
  twitter: "yourusername"
```

### Theme Toggle

The theme defaults to light mode. Users can toggle to dark mode using the button in the bottom-right corner. The preference is saved in localStorage.

## ✍️ Writing Posts

### Create a New Post

Create a file in `_posts/` with the format: `YYYY-MM-DD-title.md`

```markdown
---
layout: post
title: "Your Post Title"
date: 2025-11-15
categories: [category1, category2]
tags: [tag1, tag2]
author: Your Name
bibliography: true  # Enable citations for this post
excerpt: "A brief description of your post"
---

Your content here...
```

### Using Mathematics

**Inline math**: Use `$equation$`
```markdown
The equation $E = mc^2$ is famous.
```

**Display math**: Use `$$equation$$`
```markdown
$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$
```

### Using Citations

1. Add your references to `_bibliography/references.bib`:
```bibtex
@article{example2024,
  author = {Author Name},
  title = {Article Title},
  journal = {Journal Name},
  year = {2024}
}
```

2. Cite in your post:
```markdown
According to recent research {% cite example2024 %}.
```

3. Add bibliography section:
```markdown
Set `bibliography: true` in your post's front matter.
```

### Code Blocks

Use triple backticks with language specification:

````markdown
```python
def hello_world():
    print("Hello, World!")
```
````

## 📂 Directory Structure

```
harry-blog-fusion/
├── _config.yml           # Site configuration
├── Gemfile              # Ruby dependencies
├── _layouts/            # Page layouts
│   ├── default.html     # Base layout
│   ├── home.html        # Homepage layout
│   ├── post.html        # Blog post layout
│   └── page.html        # Static page layout
├── _includes/           # Reusable components
│   ├── header.html      # Site header
│   └── footer.html      # Site footer
├── _posts/              # Blog posts
├── _bibliography/       # BibTeX files
├── assets/
│   ├── css/
│   │   └── main.css     # Main stylesheet
│   └── js/              # JavaScript files
├── index.md             # Homepage
├── blog.md              # Blog listing page
├── about.md             # About page
└── projects.md          # Projects page
```

## 🎨 Customization

### Colors

Edit CSS variables in `assets/css/main.css`:

```css
:root {
  --bg-color: #faf9f6;
  --text-color: #1a1a1a;
  --accent-color: #666666;
  /* ... more variables */
}
```

### Navigation

Edit `_includes/header.html` to modify navigation links.

### Footer

Edit `_includes/footer.html` to customize footer content.

## 🚢 Deployment

### GitHub Pages

1. Create a repository named `yourusername.github.io`
2. Push your blog to the repository
3. Enable GitHub Pages in repository settings
4. Your blog will be live at `https://yourusername.github.io`

### Custom Domain

1. Add a `CNAME` file with your domain name
2. Configure your domain's DNS settings
3. Enable HTTPS in GitHub Pages settings

## 📦 Included Plugins

- **jekyll-feed**: RSS feed generation
- **jekyll-seo-tag**: SEO optimization
- **jekyll-sitemap**: XML sitemap
- **jekyll-scholar**: Academic citations
- **jekyll-relative-links**: Relative link support

## 🛠️ Troubleshooting

### Bundle Install Errors

If you encounter errors during `bundle install`:

```bash
# Update RubyGems
gem update --system

# Update Bundler
gem install bundler

# Try again
bundle install
```

### Jekyll Scholar Issues

Make sure you have a `_bibliography` folder with at least an empty `references.bib` file.

### MathJax Not Rendering

Clear your browser cache and ensure JavaScript is enabled.

## 📚 Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [MathJax Documentation](https://docs.mathjax.org/)
- [Jekyll Scholar](https://github.com/inukshuk/jekyll-scholar)
- [Markdown Guide](https://www.markdownguide.org/)

## 📄 License

This blog theme is open source. Feel free to use and modify it for your own projects!

## 🙏 Acknowledgments

This blog is a fusion of:
- [jekyll-theme-console](https://github.com/b2a3e8/jekyll-theme-console) for the minimalist design
- [blog-theme-master](https://github.com/gundersen/blog-theme) for academic features
- Personal customizations by Harry

---

**Happy blogging!** ☕📝

If you find this useful, consider starring the repository and sharing it with others!
