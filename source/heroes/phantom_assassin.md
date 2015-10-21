---
hero: phantom_assassin
layout: hero
index: true
abilities:
  - id: phantom_assassin_stifling_dagger
    hotkey: Q
  - id: phantom_assassin_phantom_strike
    hotkey: W
  - id: phantom_assassin_blur
    hotkey: E
  - id: phantom_assassin_coup_de_grace
    hotkey: R
summary:
  items:
    start:
      - flask
      - tango
      - stout_shield
    early:
      - quelling_blade
      - power_treads
      - ring_of_aquila
      - helm_of_the_dominator
    mid:
      - black_king_bar
      - basher
    late:
      - abyssal_blade
      - satanic
      - monkey_king_bar
  abilities: Q E Q W Q R Q E W E R W E W U R
---


<% partial 'heroes/summary' do %>
Use Dagger to last hit - Activate BKB before jumping into fights
<% end %>

## Overview

Phantom Assassin is a carry that can contribute to fights early on and still scale
very well into th late game.

<% partial 'heroes/pros_cons' do %>
* Contributes to early fights
* Great chaser
* Can safely last hit with dagger
* Passive ability grants highest evasion in the game
* Amazing agility gain per level
<%= separator %>
* Evasion countered by Monkey King Bar
* Relies heavily on Black King Bar to survive
<% end %>

## Abilities

<%= ability :phantom_assassin_stifling_dagger %> throws a dagger at the target
that deals pure damage and slows. Its mana cost decreases as you level it
up, which is why it is maxed first. During the laning phase, it is used to last
hit from a safe distance. In fights, you use it to slow your enemies and deal some
extra damage before jumping in with Phantom Strike.

Note that Stifling Dagger can proc all attack modifiers like life steal, slows
and your ultimate.

<%= ability :phantom_assassin_phantom_strike %> teleports you to a target and increases
your attack speed for the next 4 attacks. It can also be used on friendly targets
as an escape, but does not grant attack speed in that case. During fights, you use
this ability to initiate, to jump to new targets, or simply to increase your damage.
It is best to get an early point in this ability in case the opportunity for a kill
opens up.

<%= ability :phantom_assassin_blur %> grants you up to 50% evasion, making you
survivable early on. Keep in mind that it does not work against spells, so until
you get your Black King Bar, you can still be easily bursted down by magic damage.

Blur also hides you from the mini map of you enemies, unless there is a enemy hero
in a 1600 radius around you. It means you can farm and split push without
the enemy team noticing, but you have to watch the blur icon closely: It disappears
when enemy heroes are close to you, including invisible heroes.

<%= ability :phantom_assassin_coup_de_grace %> is where Phantom Assassin's damage
comes from. It makes your attacks to deal up to 450% of their normal damage, on
a rather low 15% chance.

## Items
Start with <%= item :flask %>, <%= item :tango %> and <%= item :stout_shield %>.
It is usually worth it to get <%= item :quelling_blade %> from the side shop quite
early since it helps with last hitting and lets you farm a lot faster.

As your next items, get <%= item :power_treads %> to boost your early damage and
give you more mana to work with, and <%= item :helm_of_the_dominator %> to be able
to farm without having to go back to base. You can also use Helm of the Dominator
for stacking. If you are experiencing mana issues, <%= item :ring_of_aquila %> provides
more than enough regeneration and good damage on top of it.

In almost all games, you should be getting <%= item :black_king_bar %> next. It
counters magic damage and most disables. After that, go for <%= item :basher %>:
It boosts your damage, gives you a bit more health and can stun your enemies,
interrupting channels and reducing the damage your enemies are able to deal to you.

In the late game, you can upgrade your Helm to <%= item :satanic %>, giving you a
lot more health points and insane life steal for a short duration. <%= item :abyssal_blade %>
is also great for the additional damage and reliable stun. Another item to consider
is <%= item :monkey_king_bar %>, since by now your enemies will most likely have
evasion items.

#### Alternatives

<%= item :bfury %> is a situational item on Phantom Assassin. It allows you to farm
faster and should mainly be purchased if it allows you to farm faster than your opponents
and you are getting good farm in lane. The cleave can sometimes be good in fights,
but overall Battle Fury is not a very good damage item. You also don't really need the health
and mana regeneration it provides.

<%= item :assault %> and <%= item :vladmir %> are good item to have on your team,
but not necessarily on Phantom Assassin.

<%= item :maelstrom %> and <%= item :mjollnir %> are good items on Phantom Assassin:
they allow you to farm faster, deal additional magic damage in teamfights and
increase your attack speed. The downside is that they are not great late game items,
the magic damage decreases in value as health pools grow and you already get plenty
attack speed as you level up.

## Gameplay

#### Laning

Your primary focus in lanes should be getting as much last hits as possible.
If your lane is contested, use dagger to last hit from safe distance. If you see
the opportunity for a kill, do not hesitate to blink on your targets, otherwise
you should be careful with your mana, you can't spam your spells early on.

#### Farming

You can increase your farm speed slightly by using blink on creeps. As soon as you
get <%= item :helm_of_the_dominator %>, you can start stacking camps with a dominated
creep.

Your ultimate can make you miss last hits when pushing because you can't predict
the damage your attacks deal. Always kill the creeps that are not being attacked first
to make sure you don't miss any last hits.

#### Teamfighting

In team fights, you should focus on targets that are easy to kill but at the same
time are a huge threat to you. These are mostly nukers and supports like Zeus or
Lina. Before you blink in, make sure to activate your Black King Bar and use your
dagger on the target.

Remember to use <%= ability :phantom_assassin_phantom_strike %> constantly to
increase your damage and instantly teleport to your next target.
