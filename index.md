---
layout: default
title: Mind in Review
description: Evidence-based psychology, made readable.
---

<section class="home-hero">
  <p class="kicker">Evidence-based psychology</p>
  <h1>Mind in Review</h1>
  <p>
    Evidence-based psychology, made readable. A blog where scientific
    literature meets clear, thoughtful reviews on how the mind works, why we
    behave the way we do, and what psychology can teach us about everyday life.
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
