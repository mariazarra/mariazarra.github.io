---
layout: default
title: Psychology Notes
description: A psychology blog by Maria Zarra.
---

<section class="home-hero">
  <p class="kicker">Maria Zarra · Psychology</p>
  <h1>Clear writing on the mind, behavior, and emotional life.</h1>
  <p>
    A clinical editorial space for accessible essays on anxiety, memory,
    relationships, stress, mental health, and the patterns that shape how people
    think, feel, and connect.
  </p>
  <a class="text-link" href="{{ '/blog/' | relative_url }}">Read Mind &amp; Behavior</a>
</section>

<section class="latest-feed" aria-labelledby="latest-posts">
  <h2 id="latest-posts">Latest posts</h2>
  {% for post in site.posts limit:3 %}
    <article class="story-preview">
      <p class="story-meta">{{ post.topic | default: "Psychology" }} · {{ post.date | date: "%B %-d, %Y" }}</p>
      <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
      <p>{{ post.excerpt | strip_html }}</p>
      <p class="byline">By {{ post.author | default: site.author }}</p>
    </article>
  {% endfor %}
</section>
