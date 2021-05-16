---
title: Run predictor
---

Combining my love of running with my love of data, I spent an hour today
putting together a command line tool -- based on my last six months of running
data, it will predict how long a run will take, given the distance and
elevation gain. 

It uses open-source Python libraries to perform a multi-variable linear
regression. In plain English, it predicts one output (time) based on two inputs
(distance and elevation gain).

Here's an example:

{% highlight bash %}

$ PYTHONPATH=. python3 main.py ~/Downloads/Activities.csv 11.2 500
Garmin activity history: /Users/mh/Downloads/Activities.csv
predicting for distance_km: 11.2
predicting for vert_m: 500

model summary:
  each km: 07:10
  each 100m: 08:03

predicted time: 01:41

{% endhighlight %}

I tried it out on a long run that I just did this weekend.

Initial results: not great; overpredicted (pessimistic) by about 30 minutes.

Subsequent results: excellent! I did some minor tweaking of the training set,
filtering to include the last 30 days of runs and to exclude short runs, and
saw massive improvements in prediction accuracy.

Code is on [https://github.com/mhalverson/run-predictor](GitHub) if you want to
play around with your own data (assuming you have a Garmin Connect account).
