---
layout: default
title: Great American Roadtrip
---

# Summary

In 2018, my wife Claire and I took 6 months to travel around the USA, visiting
old friends and seeing national parks. It was amazingly fun and stressful
(both "good stress" and "bad stress"), highly stimulating, and a lot of work
to plan, but incredibly rewarding.

# Map

I built an [interactive map](./great_american_roadtrip_map.html) of the
roadtrip using
[Folium](https://github.com/python-visualization/folium)/[Leaflet.js](https://leafletjs.com/). Check it out:
* [link](./great_american_roadtrip_map.html)

(Note: it's optimized for a computer screen rather than a smartphone screen.)

{% comment %}

To generate the map:
* Clone https://github.com/mhalverson/roadtrip and follow the README to generate the map html and the summary data json
* Copy the map html and the summary data over to this website repository:
  - `cp ../roadtrip/roadtrip/rendered_map.html great_american_roadtrip_map.html`
  - `cp ../roadtrip/roadtrip/summary_data.js great_american_roadtrip_summary.js`
* Then there are a few manual edits to apply to `great_american_roadtrip_map.html`:
  - in the head, add a script to load summary data file `<script src="great_american_roadtrip_summary.js"></script>`
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
