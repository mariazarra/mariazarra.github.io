---
layout: default
title: Psychology Notes
description: A psychology blog by Maria Zarra.
---

<section class="intro">
  <p class="kicker">Psychology blog</p>
  <h1>Notes on minds, behavior, and the stories people live inside.</h1>
  <p>
    A calm home for short essays about psychology, emotional life,
    relationships, mental health, therapy ideas, and the everyday patterns that
    shape how people think and feel.
  </p>
  <a class="button" href="{{ '/blog/' | relative_url }}">Read the blog</a>
</section>

<section class="latest" aria-labelledby="latest-posts">
  <h2 id="latest-posts">Latest posts</h2>
  {% for post in site.posts limit:3 %}
    <article class="post-preview">
      <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
      <p>{{ post.excerpt | strip_html }}</p>
    </article>
  {% endfor %}
</section>
