---
layout: default
title: Blog
description: Psychology essays and notes by Maria Zarra.
permalink: /blog/
---

<section class="section-heading">
  <p class="kicker">Psychology</p>
  <h1>Mind &amp; Behavior</h1>
  <p>Stories and essays on anxiety, cognition, relationships, stress, mental health, and the everyday patterns that shape how people think and feel.</p>
</section>

<section class="topic-filter" aria-labelledby="topic-filter-title">
  <h2 id="topic-filter-title">Explore Topics</h2>
  <div class="topic-links">
    <a href="{{ '/blog/' | relative_url }}">Anxiety</a>
    <a href="{{ '/blog/' | relative_url }}">Behavior</a>
    <a href="{{ '/blog/' | relative_url }}">Cognition</a>
    <a href="{{ '/blog/' | relative_url }}">Consciousness</a>
    <a href="{{ '/blog/' | relative_url }}">Creativity</a>
    <a href="{{ '/blog/' | relative_url }}">Intelligence</a>
    <a href="{{ '/blog/' | relative_url }}">Memory</a>
    <a href="{{ '/blog/' | relative_url }}">Mental Health</a>
    <a href="{{ '/blog/' | relative_url }}">Mental Illness</a>
    <a href="{{ '/blog/' | relative_url }}">Mindfulness</a>
    <a href="{{ '/blog/' | relative_url }}">Neurology</a>
    <a href="{{ '/blog/' | relative_url }}">Neuroscience</a>
    <a href="{{ '/blog/' | relative_url }}">PTSD</a>
    <a href="{{ '/blog/' | relative_url }}">Psychology</a>
    <a href="{{ '/blog/' | relative_url }}">Sexuality</a>
    <a href="{{ '/blog/' | relative_url }}">Sleep</a>
    <a href="{{ '/blog/' | relative_url }}">Stress</a>
  </div>
</section>

<section class="story-feed" aria-label="Latest psychology posts">
  {% for post in site.posts %}
    {% assign story_image = post.image | default: site.default_image %}
    <article class="story-card">
      <a href="{{ post.url | relative_url }}" class="story-card-link">
        {% if story_image %}
          <img src="{{ story_image | relative_url }}" alt="{{ post.image_alt | default: post.title }}">
        {% endif %}
        <p class="story-meta"><span>{{ post.topic | default: "Psychology" }}</span><span>{{ post.date | date: "%B %-d, %Y" }}</span></p>
        <h2>{{ post.title }}</h2>
        <p>{{ post.excerpt | strip_html }}</p>
        <p class="byline">{{ post.author | default: site.author }}</p>
      </a>
    </article>
  {% endfor %}
</section>
