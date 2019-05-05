---
layout: default
title: Tramping
---

I love tramping, or as it's known in the USA, backpacking. Having visited a
fair number of New Zealand backcountry huts, I became curious about which huts
I've visited (and which ones I haven't). Naturally, it was time for a data
visualization project!

After much hemming and hawing on how to display the data, I settled on building
maps (one per island) and a checklist. Note - the maps are best viewed on a
computer screen, but in a pinch, a smartphone in landscape mode will get the
idea across.

{% comment %}
To regenerate the checklist and maps, follow the instructions in
https://github.com/mhalverson/huts.
{% endcomment %}

* North Island map: [link](./tramping/north_island_matt_map.html)
* South Island/Stewart Island map: [link](./tramping/south_island_matt_map.html)
* Master checklist: [link](./tramping/matt_checklist.html)

A few remarks on the data and the "rules":

* The exhaustive list of DOC huts was downloaded from the NZ government [data
  portal](https://catalogue.data.govt.nz/dataset/doc-huts/) on 13 April 2019. It
  includes 989 huts, 46 of which are missing place/region data. My checklist
  excludes the huts missing place/region data.
* I have visited 3 huts which are not in the DOC list. I decided to include
  them in the checklist. They are marked as "not DOC maintained".
* I count a hut as visited if I slept in it, stopped in to eat lunch, or walked
  out front of it on the track. If I saw it from a distance, that doesn't
  count.

Make your own!

* Each link below will take you a checklist, where you mark all the huts you've
  visited. Once you've ticked all the boxes, just click a button to generate
  your map. Note - make sure you save the map URL... you can share it with your
  friends and family, or come back at a later time to update your checklist
  (click the "Update Checklist" button, bottom right).
   * North Island: [link](./tramping/north_island_dynamic_checklist.html)
   * South Island/Stewart Island: [link](./tramping/south_island_dynamic_checklist.html)

{% comment %}
# Design doc for dynamic checklist/map

Want to dynamically generate maps where users can see the huts THEY have visited
- want it to keep working even as new huts get added over time
- want it to be saveable and shareable

Plan
- pass in the hut list via URL params (?huts=x-y-z)
- encode each hut as a 5 or 6 character long hex-string, by hashing the hut + region name onto that space of encoding strings
  * use a large enough encoding space that it's likely to avoid hash collisions now and in the future
  * loudly fail / report when a collision occurs
- javascript to read the URL params, decode the huts in a reverse lookup table,
  dynamically populate the feature groups with markers, and render the map with
  checklist

- for user to enter huts
  * start with a preliminary page where they type them into an auto-completing
    search box until they're satisfied (or check them on a checklist), then
    click "generate map"... can modify the hut list via an "update the map, I
    visited a hut" button which takes them back to the preliminary page with all
    the previous huts already checked

- both the preliminary page, and the map, are "shareable" / saveable by the url params

hut name concat hut region -> encode utf8 -> sha1 for collision dispersion -> base64 encode to have more info per character in the URL -> take first 5 chars
{% endcomment %}

Endnotes:

* Many thanks to DOC and the New Zealand government for making the hut data
  freely available at <https://catalogue.data.govt.nz/dataset/doc-huts>. And of
  course, many thanks to DOC for operating and maintaining such a fine system of
  backcountry huts!
* The code to generate the hut maps is at <https://github.com/mhalverson/huts>.
  Feel free to adapt it for your own use.
