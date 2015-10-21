---
title: Dark Seer Guide
hero: dark_seer
layout: hero
index: true
abilities:
  - id: dark_seer_vacuum
    hotkey: Q
  - id: dark_seer_ion_shell
    hotkey: W
  - id: dark_seer_surge
    hotkey: E
  - id: dark_seer_wall_of_replica
    hotkey: R
summary:
  items:
    start:
      - stout_shield
      - tango
      - flask
    early:
      - soul_ring
      - arcane_boots
      - mekansm
    mid:
      - blink
      - guardian_greaves
    late:
      - pipe
      - shivas_guard
  abilities: W E W E Q R W Q W Q R Q E E U R
---

<% partial 'heroes/summary' do %>
Spam Ion Shell on your creeps for last hits and harass - Use Vacuum together with your ultimate
<% end %>

## Overview

Dark Seer is a utility hero that is best played in the offlane and
can force melee carries out of the lane by harassing them,
all while getting good farm for himself with Ion Shell. His ultimate has very
high damage potential and scales well into the late game.

<% partial 'heroes/pros_cons' do %>
* Can solo the offlane
* Makes last hitting very difficult for melee lane opponents
* High base armor
* Good at pushing
* Has escape that can also be used on allies
<%= separator %>
* Has mana problems
* Low agility gain
* Bad attack animation
<% end %>

## Abilities

<%= ability :dark_seer_vacuum %> pulls all enemies to the center of an AoE,
interrupts channels and deals some damage. It is not a very good damage spell
and since it is on a very high cooldown of 28 seconds, you should almost always
use it together with your ultimate.

<%= ability :dark_seer_ion_shell %> is the reason Dark Seer is a great offlaner.
It puts a shield on any unit that deals damage to nearby enemies. In the lane, you
cast it on your melee creeps to get last hits and damage your opponents. For teamfights,
you cast it on your team's most durable melee hero, usually your carry.

<%= ability :dark_seer_surge %> grants the targeted unit maximum movement speed
for the duration. It has some offensive uses, allowing you to chase with Ion Shell,
but primarily it serves as an escape. Note that it can be cast on your creeps for
additional harass in lanes.

<%= ability :dark_seer_wall_of_replica %> creates illusions of enemy heroes that
pass through it. The illusions take 400% damage, but also deal 90% damage, which can
be a lot of damage if you catch multiple heroes. You can and should control the
illusions to focus specific targets.

## Items

As a start, opting for <%= item :stout_shield %> together with regeneration in the form of
<%= item :flask %> and <%= item :tango %> allows you to survive in lane. With the rest
of the gold, you can get support items like wards, or you can get the recipe for
your <%= item :soul_ring %>.

As soon as you have your Soul Ring, you can spam a lot more Ion Shells, but since
the mana cost increases as you level it up, you are going to want <%= item :arcane_boots %>
next.

Your next items are <%= item :mekansm %> and <%= item :blink %>. An early
Mekansm can completely turn fights, but so can a Blink if it allows you to get a
good ultimate off. A good factor to consider is wheter your enemies have a lot
of stuns and magic damage - if they don't, you can just walk into fights with
Surge and get your combo off. If you are unsure, go for Mekansm first.

Before going in the the late game items, it is a very good idea to complete your
<%= item :guardian_greaves %>. If your opponents have lots of magic damage, you should
be getting a <%= item :pipe %>. Unless somebody else on your team already built
one, <%= item :shivas_guard %> is also a great item on Dark Seer.

#### Alternatives

<%= item :ultimate_scepter %> boosts the damage of your ultimate, so it is very
good against teams that have a lot of physical damage.

<%= item :crimson_guard %> doesn't provide a whole lot for the gold it costs.
Its biggest part, the <%= item :vanguard %>, costs around the same amount of gold
as Mekansm, but is a lot less useful in teamfights. Instead of blocking your opponents
physical damage, you might as well use it to your advantage and build Aghanim's
Scepter instead.

## Gameplay

#### Laning

Pretty much all you have to do in lane is keep using Ion Shell on your creeps.
Do not use it on the melee creep in the front of a wave, as the first will also be
the first do die.

If there is little chance of you getting killed, you can also last hit manually,
but usually it is best to stay in the back, sap XP and let Ion Shell do the work.
If you are getting ganked, use Surge to retreat to your tower.

#### Farming

Dark Seer can split push very well by using Ion Shell on creeps, the same also works
on jungle creeps. It is best to stack camps and then cast Ion Shell on the smallest creeps.
By doing this, the creeps won't actually aggro you.

#### Teamfighting

Try to have Ion Shell on your carry and other melee heroes on your team when a fight
starts. Depending on the other heroes on your team, you can act as an initiator:
Blink or run in with Surge, use your ultimate and then cast Vacuum so it centers the wall.

Be aware that Dark Seer is not a very durable hero, make sure your team mates are
ready to go in as you cast your combo.
