---
title: Contribute
layout: page
---

Sentry is community driven, everyone can help improving it. Next to each guide,
you will find a big <a href="http://prose.io/#sentryguides/sentry/edit/master/source/contribute.md" class="btn btn-secondary btn-sm">Edit</a>
button, all you need is a account on [GitHub](https://github.com). After you made
your changes, you can save them to submit them for review.

If you know how to use Git, you can also download the [entire source code of Sentry](https://github.com/sentryguides/sentry)
and make changes directly on your computer. Sentry uses the [Middleman](https://middlemanapp.com)
static site generator, so you'll need that one, too.

### Formatting

#### Tooltips

Tooltips are created using the `ability`, `hero` or `item` helpers. Example:

    <%= "\<\%= ability :crystal_maiden_frostbite \%\>" %>

Renders as: <%= ability :crystal_maiden_frostbite %>

#### Frontmatter

Frontmatter is the block at the start of a file. It looks like this:

    ---
    hero: crystal_maiden
    layout: hero
    index: true
    ---

It defines some general properties about our guide and is not part of the guide itself.

* hero: The hero id, same as file name
* index: Whether the guide is shown on the site
