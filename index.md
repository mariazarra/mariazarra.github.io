---
layout: default
title: Psychology Notes
description: A psychology blog by Maria Zarra.
---

<section class="home-hero">
  <p class="kicker">Maria Zarra · Psychology</p>
  <h1>Psychology essays on the mind, behavior, and emotional life.</h1>
  <p>
    A clinical editorial space for accessible essays on anxiety, memory,
    relationships, stress, mental health, and the patterns that shape how people
    think, feel, and connect.
  </p>
  <a class="text-link" href="{{ '/blog/' | relative_url }}">Read Mind &amp; Behavior</a>
</section>

<section class="latest-feed" aria-labelledby="latest-posts">
  <h2 id="latest-posts">Latest</h2>
  {% for post in site.posts limit:3 %}
    {% assign story_image = post.image | default: site.default_image %}
    <article class="story-card compact">
      <a href="{{ post.url | relative_url }}" class="story-card-link">
        {% if story_image %}
          <img src="{{ story_image | relative_url }}" alt="{{ post.image_alt | default: post.title }}">
        {% endif %}
        <p class="story-meta"><span>{{ post.topic | default: "Psychology" }}</span><span>{{ post.date | date: "%B %-d, %Y" }}</span></p>
        <h3>{{ post.title }}</h3>
        <p>{{ post.excerpt | strip_html }}</p>
        <p class="byline">{{ post.author | default: site.author }}</p>
      </a>
    </article>
  {% endfor %}
</section>
