---
layout: default
title: Blog
description: Psychology essays and notes by Maria Zarra.
permalink: /blog/
---

<section class="page-heading">
  <h1>Blog</h1>
  <p>Short psychology essays, reading notes, and reflections.</p>
</section>

<section class="post-list" aria-label="Posts">
  {% for post in site.posts %}
    <article class="post-preview">
      <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p>{{ post.excerpt | strip_html }}</p>
    </article>
  {% endfor %}
</section>
