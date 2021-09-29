---
title: A New YAML Specification
author: Ingy döt Net
date: October 1, 2021
---

We are excited to announce the release of [Revision 1.2.2 of the YAML 1.2
Specification](https://yaml.org/spec/1.2.2/).
This revision comes 12 years to the day after the [previous revision](
https://yaml.org/spec/1.2.1/).

Highlights of this revision include:

* No normative changes from the 1.2.1 revision.
  YAML 1.2 has not been changed.
* Hundreds of changes to improve clarity and readability and remove ambiguity.
* Syntax productions are revised to simplify the trickier parts.
  The parameterized BNF used by the spec is now fully documented.
* Spec links to a set of companion pages with useful information for
  implementers and application developers.
  These pages will be continually updated between spec revisions.
* [Spec sources](https://github.com/yaml/yaml-spec/) are hosted publicly on
  GitHub.
* Every change from the 1.2.1 spec came as a [team-reviewed pull request](
  https://github.com/yaml/yaml-spec/pulls).
* Spec sources are in [Markdown](
  https://raw.githubusercontent.com/yaml/yaml-spec/main/spec/1.2.2/spec.md)
  instead of [DocBook](
  https://github.com/yaml/yaml-spec/tree/main/spec/2009/) with hopes of easing
  contribution.
* Diagram images are now
  [SVG](https://github.com/yaml/www.yaml.org/tree/gh-pages/spec/1.2.2/img)
  rendered from
  [LaTeX](https://github.com/yaml/yaml-spec/tree/main/spec/1.2.2/src), for
  contribution without special software.
* Fully Dockerized build systems.
  Run `make serve` in your fork to see local changes.

This revision is the result of years of work by the new [YAML language
development team](https://yaml.org/spec/1.2.2/ext/team/).
Each person on this team has a deep knowledge of the language and has written
and maintains important open source YAML frameworks and tools.
Much like the [original YAML team](https://yaml.org/spec/1.2.2/ext/team/), they
bring diverse ideas to the table and argue over every detail, but always with a
respect for the team.

The team is excited to take YAML and its toolchains into the future.
We know that despite its large and growing popularity, the YAML ecosystem has
many problems.
We see the various ways that projects are trying to extend the language or work
around its quirks.
We see a future where YAML:

* Becomes richer and more expressive, while not breaking today’s YAML.
* Achieves lossless data transfer between frameworks in any language.
* Has frameworks that offer full functionality, and yet are easier to write and
  maintain.

It’s a tall order, but we’ve been working on it for years and we see the path
forward.
We’re not only working out the ways to specify the future YAML, we are
building working [reference frameworks](
https://github.com/yaml/yaml-reference-parser#readme) and tools in sync.
We have [interactive browser demos](
https://spec.yaml.io/main/playground/parser) for these reference
implementations so everyone can try things out and point out any problems.

Speaking of communication, we have a few social sites to mention:

* [YAML Matrix group chat](https://matrix.to/#/#chat:yaml.io) is where YAML
  users and developers now gather.
  Join us!
* Follow the latest YAML happenings on
  [@yamlnews](https://twitter.com/yamlnews) Twitter.
* Check out the [YAML Blog](https://yaml.com/blog/).

Excited for YAML,

    — Ingy, Tina, Panto, Eemeli and Thom
