---
title: Software Complexity
---

I have recently started on a new project at my day job - working in a new
environment/area of my company's infrastructure - and have been dwelling upon
the complexity of the software involved.

This new environment runs on the Linux OS,<br/>
running VMs (I think... not actually sure yet),<br/>
running containers,<br/>
which are orchestrated by Kubernetes,<br/>
which is managed by Rancher,<br/>
all of this to run applications written in some high level language with lots of dependent libraries,<br/>
where the applications are developed using pull requests that are managed with git,<br/>
automatically tested with a CI framework,<br/>
automatically built and stored in an artefact repository,<br/>
deployed with an automated framework (I think... also not sure yet),<br/>
running within a secure internal network,<br/>
and on and on and on.

Blech.

I'm familiar with most of this stuff (need to read a bit about containers and
Kubernetes) but even so, there's a lot of moving parts. The architecture
diagram for this environment has 43 distinct elements.

I understand why all these systems are involved - indeed for most of them I
would probably complain if they were absent - but the overall complexity is
somehow greater than the sum of the parts. Somewhere in there, a line was
crossed, and I find myself rebelling against it.

Gone are the days when a single person could understand a computer from top to
bottom, from transistor to application[^1]. I believe we are still living in
the days when a single person can understand the software portion of the stack,
from OS to application, but I wonder how long until we bid farewell to them as
well? Systems are becoming increasingly complex, and eventually they will not
all fit in one person's head.

[^1]: And they are long gone - [some would say](https://news.ycombinator.com/item?id=24736582) we said goodbye in the late 1970s, with Steve Wozniak and the Apple II.

I see three main causes of this proliferation of complexity:

1. The relentless drive to automate stuff that can be automated.

2. The habit of methodically creating abstractions between every layer of the
   software stack.

3. The advent of distributed systems as a ubiquitous/default choice.

Let's look at the impact of these in a little more detail, in the context of my
list of environment components above.

## Automate all the stuff

In my list of components, "automation" led to CI systems, autobuilds, and
autodeploys. Other examples I have seen include automated monitoring systems to
raise incidents and auto-resolve them, the autoscale feature for Amazon Web
Service EC2 instances, or even simply the act of writing scripts for previously
manual tasks.

In my opinion, automation is usually good. It doesn't hide anything, and it
doesn't add anything. It just makes stuff go faster and more repeatably,
compared to manually performing the same actions.

Automation has its drawbacks. If you automate a buggy business/technical
process, you can make things go wrong at scale, sometimes with terrifying
results! But in my experience, automation rarely adds cognitive load, so I
usually welcome it.

## Create all the abstractions

In my list of components, abstractions led to OSes, VMs, containers[^2], and
programming languages. Other examples I have seen include virtual memory,
garbage collection, type systems, etc.

[^2]: Note the recursive abstraction of containers in VMs on physical machines.

In my opinion, abstraction is often good. It comes with a cognitive burden, as
it requires you to learn deeper patterns of system interactions, recognise them
in the wild, and weave them together in a grander design. But abstraction
confers cognitive superpowers! You are freed from always having to specify the
details; you can zoom out (or in) until you find it comfortable to talk or
think about the issue at hand; you can solve a problem once and then reuse the
solution many times.

The problem is that the cognitive benefits do not always outweigh the cognitive
burdens.

Witness, for example, the divisiveness of the programming language Haskell. It
has an abstraction for just about everything (monads for computations, lenses
for getters and setters, meta-programming with Template Haskell, etc). Is it
worth the cognitive burden to learn all those abstractions? For many people,
the answer is no; and for every "yes" person, there is a personal line where it
stops being worth it.

Some abstractions prove their worth and become ubiquitous[^3]. Abstractions
that do not prove their worth tend to fall by the wayside - but, if they linger
before disappearing, they constitute a pernicious form of technical debt.
Still, my experience has been that abstractions are formed infrequently and
accrete slowly, so while they add cognitive burden, in practice it is usually a
small amount.

[^3]: Virtual memory is a great example. Dear God. What a useful construct. I love not having to worry about physical memory. You can pry virtual memory out of my cold dead operating systems.

## Distribute all the systems

In my list of components, distributed systems were present in the form of
Kubernetes, git, and the network. Other examples I have seen include databases,
DNS, and Hadoop clusters.

In my opinion, distributed systems are occasionally good. They are the only way
to remove single points of failure, so they are incredibly powerful for
improving software availability[^4]. They are a magnificent tool for improving
scalability as well. However, they come with a terrible cognitive burden! The
systems themselves are so much more complex to implement and operate. Hopefully
they live up to the promise of improved availability, but either way they will
eventually fail, and when they do it can be in complex, novel, and unforseeable
ways[^5]. Most dangerous of all, people tend to underestimate the cognitive
burden introduced by distributed systems.

[^4]: When you get them right, which people generally don't.

[^5]: See <https://jepsen.io/>.

I do not deny the power of large-scale distributed systems, having experienced
them first-hand while working at Uber and having read about them second-hand in
Google's [SRE book](https://landing.google.com/sre/sre-book/toc/index.html).
But, I think people often reach for them inappropriately, without fully
considering the cost of introducing them. If you're building core
infrastructure at Uber or Google or wherever, that's one thing, but to quote
[Rashiq Zahid](https://twitter.com/rashiq/status/1319462542163496960):

> it's incredible to me that a $5 digital ocean box can serve traffic for 200k unique visitors and yet there's startups out there who deploy their landing pages with kubectl

## Secondary effects

Automation, abstraction, and distributed systems can all have exciting (re:
unexpected) secondary interactions.

Consider the [Thundering herd
problem](https://en.wikipedia.org/wiki/Thundering_herd_problem): it is an
interaction of the abstraction of clients/servers with the abstraction of
retries in a distributed multi-client system.

[Editorial note, would love to add more examples of secondary effect problems,
but cannot think of any at the time of writing.]

Automation, abstraction, and distributed systems are alluring in isolation[^6],
but the more you reach for them, the more of these secondary effects there will
be, and the harder it will be to anticipate them.

[^6]: Although even then, sometimes they require entire new attendant systems to manage the complexity they introduce (eg containerisation begets Kubernetes begets Rancher).

## Where do we go from here?

I suspect people have been complaining about software complexity since the
beginning of software development[^7]<sup>,</sup>[^8]. Certainly I have seen
several comments about software complexity in my favourite Internet haunts of
late. However, I do have a concrete suggestion for how to respond to an
overwhelming sense of complexity.

[^7]: This is exactly analogous to every generation in human society rebelling against the apparent conservatism of their parents' generation.

[^8]: Full disclaimer, I'm 100% guilty of adding unnecessary complexity into personal projects. For instance, this website hosts all of its content on a CDN. That's totally unnecessary - it is not important that this website's content be highly available with low latency - but on the other hand I set up a CDN partially for learning purposes, with eyes wide open to the cost of using a CDN. Also I am the only one who has to bear the cognitive burden of remembering to update the CDN content.

The antidote for complexity is to simplify!

The process of simplifying a system is straightforward: remove things that can
be removed, until you're left with a pile of things none of which can be
removed. To paraphrase Albert Einstein: "make it as simple as possible, but not
simpler".

Simplifying a system is not necessarily easy[^9]<sup>,</sup>[^10]. The process
of simplifying is an art, requiring a total understanding of the subject,
producing an utterly underwhelming result given the amount of effort entailed[^11].
Fully simplifying a system may not be worth the effort[^12], but incrementally
simplifying a system is almost always worthwhile, in my experience.

Better yet, avoid the complexity in the first place if you can. Train yourself
to recognise when you are deciding to bring in automation, abstractions,
distributed systems, or other software complexity - then consciously consider
whether the supposed benefit is worth the complexity cost. With time, you may
find the courage to start saying "no".

[^9]: Although some tools aim to make it easier to achieve simplicity. At this point I must recommend Rich Hickey's excellent talk [Simple Made Easy](https://www.infoq.com/presentations/Simple-Made-Easy/), which will stretch your brain in all sorts of ways.

[^10]: Consider the classical music composer Aaron Copland's description of composing his Second Symphony, also known as his Short Symphony: "Although the performance time is only fifteen minutes, it took me, on and off, almost two years to complete it. On other occasions I’ve written fifteen minutes of music in two weeks: if I expended so much time and effort on the Short Symphony it was because I wanted to write as perfect a piece as I could."

[^11]: Simple systems are underwhelming because they are always obvious in retrospect. What people discount is how hard it can be to discover simple systems in the first place.

[^12]: That is a separate discussion, grounded in business requirements and prioritisation.

--

Footnotes:
