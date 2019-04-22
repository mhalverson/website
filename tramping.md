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

* North Island map: [link](./tramping/north_island_hut_map.html)
* South Island/Stewart Island map: [link](./tramping/south_island_hut_map.html)
* Master checklist: [link](./tramping/hut_checklist.html)

A few remarks on the data and the "rules":

* The exhaustive list of DOC huts was downloaded from the NZ government [data
  portal](https://catalogue.data.govt.nz/dataset/doc-huts/) on 13 April 2019. It
  includes 989 huts, 6 of which are closed, and 46 of which are missing
  place/region data. My checklist includes the closed huts, but excludes the
  huts missing place/region data.
* I have visited 3 huts which are not in the DOC list. I decided to include
  them in the checklist. They are marked as "not DOC maintained".
* I count a hut as visited if I slept in it, stopped in to eat lunch, or walked
  out front of it on the track. If I saw it from a distance, that doesn't
  count.

Endnotes:

* Many thanks to DOC and the New Zealand government for making the hut data
  freely available at <https://catalogue.data.govt.nz/dataset/doc-huts>. And of
  course, many thanks to DOC for operating and maintaining such a fine system of
  backcountry huts!
* If you want to make your own maps or checklist, please do. The code is at
  <https://github.com/mhalverson/huts>. It's pretty portable; most of the work
  will be data entry as you try to recall which huts you've visited :P
