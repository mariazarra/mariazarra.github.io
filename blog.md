---
layout: default
title: Blog
description: Psychology essays and notes by Maria Zarra.
permalink: /blog/
---

<section class="section-heading">
  <p class="kicker">Psychology section</p>
  <h1>Mind &amp; Behavior</h1>
  <p>Accessible psychology essays for understanding emotion, attention, relationships, stress, and the quiet patterns that shape everyday life.</p>
</section>

<section class="topic-filter" aria-labelledby="topic-filter-title">
  <h2 id="topic-filter-title">Filter by Topic</h2>
  <div class="topic-links">
    <a href="{{ '/blog/' | relative_url }}">Anxiety</a>
    <a href="{{ '/blog/' | relative_url }}">Behavior</a>
    <a href="{{ '/blog/' | relative_url }}">Cognition</a>
    <a href="{{ '/blog/' | relative_url }}">Consciousness</a>
    <a href="{{ '/blog/' | relative_url }}">Memory</a>
    <a href="{{ '/blog/' | relative_url }}">Mental Health</a>
    <a href="{{ '/blog/' | relative_url }}">Neuroscience</a>
    <a href="{{ '/blog/' | relative_url }}">Sleep</a>
    <a href="{{ '/blog/' | relative_url }}">Stress</a>
  </div>
</section>

<section class="story-feed" aria-label="Latest psychology posts">
  {% for post in site.posts %}
    <article class="story-preview">
      <p class="story-meta">{{ post.topic | default: "Psychology" }} · {{ post.date | date: "%B %-d, %Y" }}</p>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p>{{ post.excerpt | strip_html }}</p>
      <p class="byline">By {{ post.author | default: site.author }}</p>
    </article>
  {% endfor %}
</section>
