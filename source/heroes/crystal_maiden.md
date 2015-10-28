---
hero: crystal_maiden
layout: hero
index: true
abilities:
  - id: crystal_maiden_crystal_nova
    hotkey: Q
  - id: crystal_maiden_frostbite
    hotkey: W
  - id: crystal_maiden_brilliance_aura
    hotkey: E
  - id: crystal_maiden_freezing_field
    hotkey: R
summary:
  items:
    start:
      - tango
      - clarity
      - ward_observer
      - courier
      - branches
      - branches
    early:
      - tranquil_boots
      - magic_wand
    mid:
      - blink
      - glimmer_cape
    late:
      - ultimate_scepter
      - black_king_bar
  abilities: W E Q E Q R Q E Q E W W W R U R
published: true
---


<% partial 'heroes/summary' do %>
Use Frostbite to jungle - Wait for the right moment to use your ultimate
<% end %>

## Overview

Crystal Maiden is a flexible support hero that provides team-wide mana
regeneration, a disable on a short cooldown and a high-damage, although
hard to use, ultimate.

<% partial 'heroes/pros_cons' do %>
* Good disable and nukes
* Team-wide mana regeneration can have a big impact on the outcome of fights
* If used correctly, one of the highest damage dealing ultimates in the game
<%= separator %>
* Low health pool, armor and movement speed
* Ultimate very difficult to use without mobility items
<% end %>

## Abilities

<%= ability :crystal_maiden_crystal_nova %> slows and damages enemies in a
400 AoE. It deals less damage and has a higher cooldown than Frostbite, but the
movement and attack slow improve drastically as you level it up. It is not a
very good ability at level one, which is why you want to level it up as early as
possible.

<%= ability :crystal_maiden_frostbite %> freezes a unit in place, making them unable to move
or attack, and deals up to 300 damage to heroes. They can still cast abilities or items
like teleport scrolls. During the duration of Frostbite, you also get True Sight
of the unit, so heroes like Riki can not turn invisible.

Frostbite can also be used for jungling: Even on level 1, it always lasts 10
seconds on creeps and deals a total of 1000 damage. This allows you to kill the
big jungle creeps easily. Frostbite is a great ability at level one, and since
Crystal Nova only gets good at higher levels, it is best to max Frostbite last.

<%= ability :crystal_maiden_brilliance_aura %> is a global aura that grants additional
mana regeneration to your team. It allows your team to cast more spells, which can sometimes
make the difference between winning and loosing a fight. Especially Heroes that often
have mana issues, but don't want to build any regen items, like Slark or Bristleback, will
be very happy to have Crystal Maiden in their team.

If you team is not that dependent on the additional mana, you can choose to go for a
more ganking oriented build and max Crystal Nova and Frostbite first.

<%= ability :crystal_maiden_freezing_field %> is your channeled ultimate that deals
heavy damage around you and slows movement and attack speed. It requires you
to be close to your enemies in order to damage them, which is why it is very easy
for them to interrupt you, making this ability difficult to use. More often than not,
you will simply get stunned right after you've started to channel. This is why you
have to surprise your opponents, blink in after they have already used their stuns
and hope they don't burst you down too quickly or saved one stun for you.

It is always good to get the first level of your ultimate as you reach level 6,
but since the mana cost doubles on level two, it makes sense to delay leveling it
further until you have the mana pool to support it.

## Items

As starting items, get a set of <%= item :tango %>, one or two <%= item :clarity %> potions
and <%= item :ward_observer %> as well as <%= item :courier %>. If you have the gold for it,
get <%= item :ring_of_protection %>, otherwise go for 2x <%= item :branches %>.

During the laning phase, you can hopefully get enough gold to acquire <%= item :tranquil_boots %>
and <%= item :magic_wand %>.

Your next choice depends on how well the game is going. If you contributed to a few
ganks, you will usually have enough gold to afford <%= item :blink %> somewhere
around 20 minutes into the game. It helps a lot with getting a good ultimate off.
If the game is not going well and you already died a few times, the better item is
<%= item :glimmer_cape %>. It also helps with your ultimate by turning you invisible
and more resistant to magic damage, but has uses outside of teamfights as well
boosting your overall survivability. No matter what you build first,
you should eventually have both before moving on to the next item.

Depending on the composition of the enemy team, you will want to get one of three items to help get the most from your ultimate.
In most games, you will want <%= item :black_king_bar %> as your next item. It allows you to channel your ultimate without interruptions from stuns, silences and other spell-based disables.

If you were able to channel your ultimate without interruption so far or your
opponents have abilties that go through Black King Bar (like <%= ability :vengefulspirit_nether_swap %>,
<%= ability :pudge_meat_hook %> and a few others), you could also go straight into
<%= item :ultimate_scepter %>. It buffs the damage and slow of your ultimate.
These items however are very expensive for a support, in most games you will not be able to afford them.

If your problem is that you are dying too quickly to the enemy carry's auto attacks, consider investing in <%= item :ghost %>. Combining this with the <%= item :glimmer_cape %> makes it very difficult to stop you without a stun.

#### Alternatives

<%= item :force_staff %> is a good alternative to Blink. You can buy it in components,
making it easier to get as a support, and it doesn't break when you take damage.
The downside is that Force Staff makes it a lot harder to position yourself correctly
because its range is much shorter. It is also worse at ganking and chasing.

<%= item :bracer %> is a good early game item to get when you are behind and have survivability issues.
You can choose to build it into <%= item :ancient_janggo %> later.

## Gameplay

#### Laning

Crystal Maiden is a very strong support in any lane. Your primary task is to zone
the offlaner, which means harassing them so they have to retreat to their tower.
Your positioning in the lane is very important, as Crystal Maiden can be killed very
easily by most heroes and your carry might not always be able to help you.

If your carry is able to free farm in lane, you can shift over to the jungle and kill
the big creeps in the large camp with <%= ability :crystal_maiden_frostbite %> and
stack them at the same time. If your lane is pushed out, you can also do [pulls](/mechanics/pulling/).

#### Teamfighting

For most of the early and mid game, you do not have enough mana to cast all your
spells during a fight. It is important to decide which spells to cast. If you expect
to be able to channel your ultimate for several seconds, it is usually worth doing so,
even if you die in the process. Otherwise, you should cast <%= ability :crystal_maiden_frostbite %>
on their carry and hit as many targets as possible with <%= ability :crystal_maiden_crystal_nova %>.
