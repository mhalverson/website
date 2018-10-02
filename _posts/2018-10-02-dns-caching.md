---
title: DNS Caching
---

I am an experienced backend engineer, but an utter noob when it comes to web development. My nascent frontend skills may be obvious from the utter simplicity of this website, but there has also been an invisible learning curve for website features like DNS, SSL/TLS, and CDN.

The most surprising thing I've learned so far is that DNS caching occurs at many layers.

I discovered this while updating some DNS entries that had a 60 minute TTL (specifically, I configured my Godaddy domain to use nameservers from AWS Route 53). After waiting an hour, I was surprised that my changes hadn't propagated throughout the DNS network. I suspected it was a caching problem, and tried flushing my browser's DNS cache, to no avail. I tried flushing my operating system's DNS cache, to no avail. I asked a friend for advice, and he said that all my config changes looked correct, and what's more, the changes were showing up just fine on his device. Puzzling...

I searched the internet for DNS caching policies, and found this interesting tidbit in the Wikipedia entry for DNS: `[M]any home networking routers implement DNS caches and recursors to improve efficiency in the local network.`

Operating under the theory that my hotel router needed to flush its DNS cache, I tried a different strategy: tethering my computer to my smartphone as a wireless hotspot, to access the authoritative DNS servers through a different resolution path. That finally did the trick! I was elated by this understanding, but as one might expect, sad that I did not have the authority to flush the hotel router's DNS cache.
