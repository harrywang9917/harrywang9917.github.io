---
layout: page
title: Writing
lang: en
permalink: /blog/
---

<!-- Tag Filter Navigation -->
{% assign all_tags = site.posts | map: 'tags' | join: ',' | split: ',' | uniq | sort %}
{% if all_tags.size > 0 %}
<nav class="tag-filter">
  <a href="#" class="filter-tag active" data-tag="all">All</a>
  {% for tag in all_tags %}
    {% if tag != "" %}
    <a href="#" class="filter-tag" data-tag="{{ tag }}">{{ tag }}</a>
    {% endif %}
  {% endfor %}
</nav>
{% endif %}

{% for post in site.posts %}
<div class="card" data-tags="{{ post.tags | join: ',' }}" data-lang="{{ post.lang | default: 'en' }}">
  <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
  <div class="post-meta">
    <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%Y-%m-%d" }}</time>
    {% if post.categories.size > 0 %}
      • {% for category in post.categories %}{{ category }}{% unless forloop.last %}, {% endunless %}{% endfor %}
    {% endif %}
  </div>
  {% if post.excerpt %}
  <p>{{ post.excerpt | strip_html | truncate: 250 }}</p>
  {% endif %}
</div>
{% endfor %}

{% if site.posts.size == 0 %}
<p>No posts yet. Check back soon!</p>
{% endif %}
