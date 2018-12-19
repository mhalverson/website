---
layout: default
title: Great American Roadtrip, 2018
---

# Summary

In 2018, my wife Claire and I took 6 months to travel around the USA, visiting
old friends and seeing national parks. It was amazingly fun and stressful (both
"good stress" and "bad stress"), highly stimulating, a lot of work to plan, and
incredibly rewarding.

# Map

I built an [interactive map](2018_05_great_american_roadtrip_map.html) of the
roadtrip using
[Folium](https://github.com/python-visualization/folium)/[Leaflet.js](https://leafletjs.com/). Check it out:
* [link](2018_05_great_american_roadtrip_map.html)

Notes:
* It is optimized for a computer screen rather than a smartphone screen.
* The best way to see trip photos is through the map. Enable the "Facebook
  posts" layer, and click on the areas you're interested in.

{% comment %}

To generate the map:
* Clone https://github.com/mhalverson/roadtrip and follow the README to generate the map html and the summary data json
* Copy the map html and the summary data over to this website repository:
  - `cp ../roadtrip/roadtrip/rendered_map.html travel/2018_05_great_american_roadtrip_map.html`
  - `cp ../roadtrip/roadtrip/summary_data.js travel/2018_05_great_american_roadtrip_summary.js`
* Then there are a few manual edits to apply to `travel/2018_05_great_american_roadtrip_map.html`:
  - in the head, add a script to load summary data file `<script src="2018_05_great_american_roadtrip_summary.js"></script>`
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

The genesis of the roadtrip was in other life plans of moving to New Zealand.
Claire and I had both studied abroad there during college, and had come home
feeling like we weren't done with New Zealand, or maybe like New Zealand wasn't
done with us. We had dreamed of returning to spend more time there on
working-holiday visas. As we talked more, we subjected the idea to a
"pre-mortem" analysis of what we might regret in our old age. We agreed that
not moving back to NZ would be a major regret for both of us, and that was
that. We were committed to the idea.

As we looked at the logistics of moving to NZ, we saw an opportunity for
extended travel in between leaving our American lives and starting our New
Zealand lives. We would be quitting our American jobs and their attendant
vacation limits, we were young and healthy, we had no kids, we had enough money
saved up to afford it...  this was a once-in-a-lifetime travel opportunity.
Again, we posed the question of regret, and again the Ghost of Christmas Yet to
Come showed us grim tidings, and that was that.

As we started to plan our travels, we dreamed big: we would do a year-long trip
around the world, starting in the USA, heading eastward, and stopping when we
got to New Zealand! We made a list of all the places we wanted to go and it was
a clear majority of the countries in the world. We tried to draft itineraries
that were both realistic and fun, with no success. Our dream was a little too
big to become reality -- a little too expensive, too complicated to plan, too
open-ended to narrow down.

Eventually the idea occurred to us to do a big roadtrip around the USA. And why
not? It's a big country and we hadn't seen most of it. We had a car, we spoke
the language, we had friends scattered throughout the country to visit, and
there were so many national parks we had been itching to see. It would be a
wonderful way to say farewell to the USA. Most important, a Great American
Roadtrip just felt right. That was that.

# How to plan a Great American Roadtrip

Here were our steps for planning. Your mileage may vary!

* In September 2017 we sat for two hours in a pie shop and made a big list of
  all the places we had always wanted to visit.
* In October 2017 we created official themes for our travels, to narrow down
  the infinitude of possible destinations.
  - Main themes: national parks + friends
  - Secondary themes: breweries/wineries/distilleries + history + tiki bars +
    bird-watching
* In December 2017 we started to assemble actual itineraries: what places would
  we visit, in what order, and how long we would spend in each place?
  - In the interest of good weather, we constrained ourselves to six months on
    the road, from mid-spring to mid-fall.
  - Our own preferences of "more time in fewer places" dictated a minimum of
    three nights in each place, as a rule of thumb. We looked at our overall
    list of places and realized it would take a year to visit them all. So, we
    ruthlessly cut the list in half. (This was painful.)
  - A simple connect-the-dots on the resulting list would have been a trip with
    terrible weather, visiting the South in the dead of summer and camping in
    autumn snows in the Rockies (or, in the reverse direction, traveling across
    the North before the winter snows had melted).
  - In the middle of our trip, we had weddings where we were in the bridal
    party, and a college graduation to attend... should we drive back for
    those, or just fly in for the weekend? (Spoilers: we booked flights.)
  - Our final itinerary had a roadtrip-within-the-roadtrip. The plan was for
    us to leave our car in Minnesota for a month, fly to the
    West Coast, borrow my parents mini-van, and travel up and down the West
    Coast attending weddings and seeing the parks of the Pacific Northwest.
    Simultaneously, my parents would fly to Minnesota for a family reunion, and
    they would use our car which we had left in Minnesota. Amazingly, this
    plan worked.
* In January 2018 we contacted friends along our travel route to check their
  availability.
* In March 2018 we booked campsites for national parks.
  - This was necessary because national park campgrounds fill up several months
    in advance.
  - This was the first hard commitment of money of our roadtrip. It took quite
    a bit of research, as it required committing up front to the date of
    arrival, date of departure, and choice of campground (typically,
    national parks have several campgrounds located far apart from each other).
* In April 2018 we made packing lists.
  - We had to bring gear for weddings, car camping, island backpacking,
    100&deg;F weather in Arizona at the start of the trip, and 25&deg;F weather
    in the Rockies at the end of the trip.
  - We planned what to bring on each flight, how to do the car swap, and how to
    supply the camping gear for our nested West Coast roadtrip.

Our resulting itinerary was logistically complex. It had started simple, but
gradually transformed into a big wicked beastie, nested roadtrips and all.
Still, it made sense to us. ¯\\\_(ツ)\_/¯

# The trip itself

Our trip began on May 2. We left San Francisco in our trusty Hyundai Elantra
packed to the gills and returned six months later. During that time, we
circumnavigated the USA, visiting 38 of the 50 states. We camped about
one-third of the nights. The rest of the nights, we mostly stayed in the homes
of friends or family, and occasionally stayed in motels or AirBNBs.

The emotional arc of our trip was a three month honeymoon through the South and
East Coast, followed by a two month slump in the Midwest and Pacific Northwest,
finishing with a one month rally in the Southwest.

## Three month honeymoon

The honeymoon was great. We had unbridled enthusiasm at seeing such a vibrant
diversity of new places. We ate delicious new foods, we explored new cultures,
we marveled at new ecosystems, we learned new parts of American history.

Highlights of the honeymoon were Carlsbad Caverns NP (National Park), New
Orleans, Washington DC, Acadia NP, and Chicago.

## Two month slump

The slump was hard.

I thought driving all the time would be the hard part, but in the end, the
hardest part was managing our own mental health.

We never got sick of driving; we had plenty of easy-listening audiobooks and
podcasts to keep us going.  We never got sick of the road; it became its own
place, one of the great constants of the trip.  We *did* get exhausted by
overstimulation (an endless stream of new things!), vulnerable from missing
friends and family, and irritable from spending 24/7 together (preexisting
habits that never used to bother us suddenly drove us crazy). Some things that
helped us recover: rest days where we sat indoors all day and didn't do
anything; a few hours apart from each other once a week; reuniting with old
friends; and the occasional stop in a familiar place.

At times, I felt unmoored by the disruption of our old routines. Of course, new
routines emerged eventually. We would always stop in at national park visitor
centers to stamp our park passports, ask about hikes, and buy patches. We would
play silly phone games at night before going to sleep. In cities, we would make
pies for our hosts, or see tiki bars. In camp, Claire would cook and I would
clean up.  We set up and broke camp so many times that we can practically do it
blindfolded.  And on and on and on.

One of my least favorite questions from people back home was, "How is your
vacation going?" It's an innocent question, but the use of the word "vacation"
always made me feel a little isolated or misunderstood. Vacation is about
relaxation. Travel is about growth through new experiences. I enjoy both
vacation and travel, but our roadtrip was definitely travel, and during our
slump we felt worn down and weary. But, I understand how this can seem like
splitting hairs to people back home working full time jobs.

Claire and I both love the outdoors, and avidly enjoy backpacking and camping.
On this trip, we learned that we have an upper limit to how much we enjoy
camping: about 30 days in a row. During the Rockies, we camped for about 6
weeks straight, so we had to up our camping game. We upgraded our gear to get a
bigger tent and warmer sleeping bags. We also adopted the [Marco Polo
app](http://www.marcopolo.me/) for asynchronous video chats with the important
people in our lives. The asynchronous interface was a great equalizer of time
zone differences, intermittent cell service while camping, and baby-impacted
sleep schedules.

We had just the right of granularity in planning, which helped to mitigate the
slump somewhat. Committing to our sleeping locations in advance[^1] helped us avoid
the decision fatigue of the daily questions of "should we leave yet?" and
"where to next?" Conversely, our unplanned days were a boon for our mental
health -- they gave us the flexibility to do what we wanted on any given day,
whether that was rest, play tourist, go hiking, or spend a night out on the
town.

[^1]: I had felt foolish planning six months of sleeping locations in advance, but in the end, we departed from our plans surprisingly little, changing perhaps 10 nights in total.

Highlights of the slump were Olympic NP, Mount Rainier NP, the Boundary Waters,
Banff NP of Canada, and Glacier NP.

## One month rally

The rally was fun again. We were closer and closer to home, we had grown as
individuals and as a couple, we had gotten through the hard times, and the end
was in sight!

Highlights of the rally were Zion NP, Scottsdale/Phoenix, and Los Angeles.

# Reflections

My feelings immediately upon finishing were not what I expected. I thought I'd
be more emotional to be done and home again, but instead we were consumed with
preparations for moving to NZ.

The trip was a great relationship test. Claire and I are happy to report that,
despite some fights along the way (to be expected), we don't hate each other or
want a divorce. Compared to the start of the trip, we have grown closer and our
relationship has grown stronger. We both feel that we could not have done the
trip with anyone else.

My overall impressions of the USA have changed somewhat. I am now acutely aware
of the fact that America is very, very big! With that size comes an incredible
diversity. Yes, I know, diversity is one of the most celebrated aspects of the
American ideal, but it's one thing to see that in the media, and another thing
to experience it personally. The USA has an extreme diversity of physical
geography and ecosystems, cultural values, traditions, accents, historical
events, and last but not least food. I believe that this diversity is a
strength, and one of the most remarkable parts of the country. It was certainly
a joy to experience.

I am deeply appreciative of the National Parks. I am a little surprised that
the concept got off the ground way back in the 1800s. I am grateful that so
many important places have been protected as national parks. I am impressed by
the National Park Service's ability to balance conservation and recreation. I
firmly believe that the national parks are one of America's best ideas.

Claire and I were very lucky to be able to do this trip at all, in terms of
money[^2], health, and general life circumstances.

[^2]: Claire and I were married in 2017. We had saved aggressively for about a year in order to fund the wedding, and we kept on saving aggressively for another year in order to fund the roadtrip. We kept costs down in a variety of ways. We used our existing (small) car, we were able to stay with friends and family in most cities, we camped the rest of the time, etc.

Claire and I had tremendous logistical help from my mom and dad in California
and my Uncle Vic and Aunt Ari in Minneapolis. We could not have done this trip
without them, or without the support of our extended network of family and
friends.

## Next time?

Despite traveling for six months, Claire and I saw only a small fraction of the
USA. There are entire states we didn't even drive through, and there are about
20 national parks we still haven't visited. Plus, for many of the places we did
visit, we left feeling like we wanted to come back and spend more time there.
While we won't be doing another roadtrip like this any time soon, we hope to do
one in the (distant) future. Here is what we learned that would be useful for
next time.

What went well?
* We were pretty organized, which meant the trip overall went smoothly. When we
  had to alter our plans on the fly, we were prepared to make tradeoffs.
* We put a lot of money into preventative car maintenance before the trip, and
  were happy not to have any car troubles along the way.
* Our policy of three nights in most places was a good choice for us. Cutting
  the initial itineray down to accommodate that policy was painful but worth
  it.
* Planning our itinerary around seasonal weather made the trip generally
  pleasant.
* Booking campsites several months in advance was annoying but worth it. The
  national park campgrounds are usually very scenic. Staying in them can
  dramatically reduce driving times.[^3]

[^3]: This was most notable in Yellowstone NP, which has two star attractions: geothermal features, and an abundance of wildlife. There are long daily traffic jams for roadside buffalo. We probably saved 5 hours of driving by camping in the park for six nights instead of staying at a motel just outside the park.

What didn't go well?
* We didn't take enough rest days. We always wanted to make the most of our
  time in a given place, especially knowing we might not return for a long time
  if ever. However, this was a mistake. When we went long periods without rest days,
  we weren't able to fully process the continual new experiences, and we would
  grow irritable with the overstimulation. Consequently, we would stop enjoying
  the travel. Rest days are required for good mental health, and we should have
  enforced a minimum weekly quota.
* It was hot when we were in the South and cold when we were in the Rockies. We
  tried our best to plan around the weather, but ideally we should have shifted
  our entire trip to be three weeks earlier.

What would we do differently next time?
* Get a bigger car. The Hyundai Elantra got the job done, but it was not
  comfortable.
* Get a camper van so we could camp without being affected by the weather.
  Camping is fine in nice weather, but if you camp for long enough you are
  bound to have bad weather. We camped with severe bugs, rain, wind, and cold
  temperatures.
* Travel for two months at a time, taking long breaks in between. This would
  help avoid slumps, and ideally keep every individual two-month trip in the
  honeymoon phase.

## Final thoughts

I have no regrets about doing this roadtrip. It was an amazing experience. I am
happy to have done it, but I am happy to be done with it, too. I am left with
an abiding appreciation of the Great Indoors (kitchens, bathrooms, shelter) and
quiet evenings at home.

# By the numbers

Total days on the road	| 182
Days of camping		| 69
Days in cities		| 113
Total miles of driving	| 19913
Total hours of driving	| 365.75
Longest driving day	| 640 miles / 9.25 hours
Number of car accidents	| 0
Number of hospital visits		| 0
Number of thefts			| 0
Number of states visited		| 38
Number of national parks visited	| 30
Highest elevation	| 12183 ft/3713 m on 2018-09-24 at Trail Ridge Road Summit in Rocky Mountain NP
Lowest elevation	| -236 ft/-71 m on 2018-10-15 at the Salton Sea
Highest temperature	| 100&deg;F/38&deg;C on 2018-05-05 in Tucson
Lowest temperature	| 25&deg;F/-4&deg;C on 2018-10-08 in Grand Canyon NP
Favorite city		| Chicago for Claire, DC for Matt
Favorite nature		| Olympic NP for Claire, Glacier NP for Matt
Number of flights	| 10
Number of books read	| 20
