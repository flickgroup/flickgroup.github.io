---
layout: page
permalink: /publications/
title: publications
description:
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

Publications in reversed chronological order. For a complete list visit <a href="https://scholar.google.com/citations?user=nyp2T-oAAAAJ&hl=en">google scholar</a>.

{% capture pub_total %}{% bibliography_count %}{% endcapture %}

<style>
  .publications { counter-reset: pub-num {{ pub_total | plus: 1 }}; }
  .publications ol.bibliography { list-style: none; padding-left: 0; }
  .publications ol.bibliography > li {
    position: relative;
    padding-left: 3em;
  }
  .publications ol.bibliography > li::before {
    content: '[' counter(pub-num) '] ';
    counter-increment: pub-num -1;
    font-weight: bold;
    position: absolute;
    left: 0;
  }
</style>

<div class="publications">

{% bibliography %}

</div>
