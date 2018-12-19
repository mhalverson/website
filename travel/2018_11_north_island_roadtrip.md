---
layout: default
title: North Island Roadtrip, 2018
---

# Summary

Immediately following our [2018 Great American
Roadtrip](2018_05_great_american_roadtrip.html), my wife Claire and I took 6
weeks to travel around the North Island of New Zealand. We thought it would be
a nice way to say hello to New Zealand before looking for work on the South
Island with our working-holiday visas, and it was.

# Map

I built an [interactive map](2018_11_north_island_roadtrip_map.html) of the
roadtrip using
[Folium](https://github.com/python-visualization/folium)/[Leaflet.js](https://leafletjs.com/). Check it out:
* [link](2018_11_north_island_roadtrip_map.html)

Notes:
* It is optimized for a computer screen rather than a smartphone screen.
* The best way to see trip photos is through the map. Enable the "Facebook
  posts" layer, and click on the areas you're interested in.

{% comment %}

To generate the map:
* Clone https://github.com/mhalverson/roadtrip and follow the README to generate the map html and the summary data json
* Copy the map html and the summary data over to this website repository:
  - `cp ../roadtrip/roadtrip/nz.rendered_map.html travel/2018_11_north_island_roadtrip_map.html`
  - `cp ../roadtrip/roadtrip/nz.summary_data.js travel/2018_11_north_island_roadtrip_summary.js`
* Then there are a few manual edits to apply to `travel/2018_11_north_island_roadtrip_map.html`:
  - in the head, add a script to load summary data file `<script src="2018_11_north_island_roadtrip_summary.js"></script>`
  - change the map style to have `height: 80.0%;`
  - in the body, add another div to hold the summary data: `<div id="summaryzone"></div>`
  - add an event listener to "overlay added" that will render the summary data to the screen:

```javascript
$('#summaryzone').html('<p>The map has our routeline displayed by default. If you click on the "layers" icon in the upper-right corner, you can enable other map layers to show various events.</p><p>This bottom space will show the same data as the map layers, formatted as a table.</p><p>To see these instructions and this summary data again, simply refresh the page.</p><h3>Summary data</h3>' + summary_data["executive_summary"]);
map_9517c5c733444eaaad679c9c65c0a278.on('overlayadd', function(overlay) {
	$('#summaryzone').html('<h3>' + overlay.name + '</h3>' + summary_data[overlay.name]);
	return true;
});
```

{% endcomment %}

# Motivation

We had a few separate motivations for taking this trip.

While Claire and I had both previously lived on the South Island, we had only
spent a few weeks on the North Island, and we felt like we wanted to get to
know it a little better. Plus, we have a number of friends scattered around the
North Island who we hadn't seen in years.

We knew we wanted to buy a car in NZ, and that the used-car market is biggest
in Auckland. It felt logistically simple to buy a car there and drive it around
the North Island for a while, before taking the ferry to the South Island.

Finally, we knew we would spend most of our working-holiday visa on the South
Island, so the timing felt right to start by traveling around the North Island.

# The trip itself

Our itinerary was not the typical tourist itinerary, because we had seen many
of the main tourist attractions already. We balanced our six weeks among the
following activities:
* visiting friends (in Auckland, Taranaki, Whanganui, and Wellington)
* exploring parts of the North Island we had never seen (Northland, the
  Coromandel, the East Coast, Taranaki)
* tramping (in the Ruahines, in the Tararuas, and canoeing down the Whanganui River)

# Reflections

Compared to our Great American Roadtrip, this trip was much smaller in scope
and much more relaxed. It was vacation, not travel. We mostly had fun, and
there were only a few moments when we wanted to kill each other :P

The biggest impact of this trip was to give me a new appreciation for the North
Island. I had previously considered it an obvious second-best to the South
Island, in terms of general awesomeness and desirability as a place to live.
This trip changed my mind. To quote my friend Giselle: "The North Island is not
less beautiful than the South Island but rather differently beautiful." Just as
the South Island has elements (wildlife and terrain) that can't be found in the
North Island, so the reverse is true too. I am now deeply appreciative of the
North Island's magnificent kauri forests, sand dunes, and high desert; I have a
newfound love for Auckland as a city (and a deeper love for Wellington); and I
have new respect for North Island tramping from our insanely windy trip to the
Ruahines and our challenging, highly technical, and very rewarding trip down
the Main Range of the Tararuas.

# By the numbers

Total days on the road	| 38
Days of camping[^1]	| 13
Days in cities	| 25
Total kms of driving	| 3954
Total hours of driving	| 58.25
Longest driving day	| 540 kms / 7 hours
Number of car accidents	| 0
Number of hospital visits	| 0
Number of thefts	| 0
Highest elevation	| 4662 ft/1420 m on 2018-12-11 on Bridge Peak in the Tararuas
Favourite nature	| Kapowairua/Spirit Bay for Claire, the Main Range of the Tararuas for Matt
Least favourite nature	| The windy Ruahines for both of us

[^1]: Camping is defined here as sleeping in a hut or a tent.
