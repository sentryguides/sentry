---
title: Contribute
layout: page
---

Sentry is community driven, everyone can help improving it. Next to each guide,
you will find a big blue <a href="http://prose.io/#jgillich/sentry/edit/master/source/contribute.md" class="btn btn-info btn-sm">Edit</a> button, all you need
is a account on [GitHub](https://github.com). After you made your changes, you
can save them to submit them for review.

If you know how to use Git, you can also download the [entire source code of Sentry](https://github.com/jgillich/sentry)
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
    title: Crystal Maiden Guide
    hero: crystal_maiden
    layout: hero
    index: true
    ---

It defines some general properties about our guide and is not part of the guide itself.

* title: The title of the site
* hero: The hero id, same as file name
* index: Whether the guide is shown on the site
