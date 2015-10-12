---
title: Weaver Guide
hero: weaver
layout: hero
index: true
abilities:
  - id: weaver_the_swarm
    hotkey: Q
  - id: weaver_shukuchi
    hotkey: W
  - id: weaver_geminate_attack
    hotkey: E
  - id: weaver_time_lapse
    hotkey: R
summary:
  items:
    start:
      - flask
      - tango
      - ring_of_protection
      - circlet
    early:
      - ring_of_aquila
      - power_treads
      - pers
    mid:
      - sphere
      - desolator
    late:
      - greater_crit
      - heart
  abilities: W E W E W R W Q E Q R E Q Q U R
---

<% partial :summary do %>
Play safe until level 7 - Use Shukuchi to farm faster - Avoid getting focused in fights
<% end %>

### Overview

Weaver is a agility carry that deals high damage and excels at chasing
and tower diving without much risk. Thanks to <%= ability :weaver_shukuchi %>, he can solo the offlane
and still grab decent farm in most cases. However, being somewhat item-dependent,
playing him in the safe lane guarantees he will be useful later on.


<% partial :procon do %>
<% partial :pro do %>
* Requires a lot of lockdown to kill
* Deals high damage
* Can solo the offlane
* Great at chasing and tower diving
* Great farmer and splitpusher
<% end %>
<% partial :con do %>
* Low base stats and stat gain
* Vulnerable to magic burst damage, stuns and silences
<% end %>
<% end %>

### Abilities

<%= ability :weaver_shukuchi %> is the skill you will always want to max first:
It grants you maximum movement speed, makes you invisible and deals damage to all
units you pass through. The main reason to level it early is the cooldown reduction,
allowing you to escape when you need to. On level 1, its effective cooldown is 8 seconds,
which is usually more than enough time for the enemy to kill you. On level for,
the effective cooldown is 2 seconds, requiring a lot of stuns or silences for you
to die.

The skill has many uses: You use it to chase people, to escape, or simply to farm
faster. It allows Weaver to clear Jungle camps quickly, simply use it to get from one
camp to another, you will not only get there faster, but also deal damage to creeps.

<%= ability :weaver_geminate_attack %> doubles your attacks on a fairly low cooldown.
It has some uses during the laning phase, allowing you to get some last hits that you
might not have gotten without it. Note that the second attack is delayed, it goes out
when the first one arrives. Standing right next to the creep you are attacking means
they both arrive more or less instantly, otherwise you might miss some last hits
due to bad timing.

If you do not need Geminate attack for last hitting, you should use it to harass
your lane opponent(s). Note that Geminate does not trigger any special effects like
criticals from <%= item :greater_crit %>, it does however profit from <%= item :desolator %>
because your first attack applies the armor debuff on the target.

<%= ability :weaver_the_swarm %> sends out an army of bugs that attach to enemy and
neutral units alike, attacking them and reducing their armor. They deal decent damage, but
the great thing about them is the armor reduction and the fact that they act as a tank.
You use the ability when you are about to attack someone. Every time the little beetle attacks,
it reduces their targets armor by 1. Because the beetles die after 16 seconds, the
armor reduction peaks at 16, but in practice either you or your opponent will not survive that long.

And even if your opponent does not fight you and instead retreats to their tower:
The tower will focus the beetle first, allowing you to tower dive with very little risk.

The Swarm should be maxed last, but it is worth getting an early point to secure kills.
It is usually too risky to go for kills before having maxed Shukuchi and unlike
Geminate, The Swarm does not scale with attack damage. Note that the bugs grant
gold when killed, using them for harassing is therefore counter-productive.

<%= ability :weaver_time_lapse %> is your ultimate, and it is quite good.
Whenever you take some heavy damage, use Time Lapse and it is undone. When you dive
into the enemy tower for a kill and teleports are coming in, simply use time lapse to
get in safe distance. You died in a fight? Buyback and use Time Lapse, continue fighting.
Ok, maybe you should think twice before doing that.

Anyway, you should never hesitate to use Time Lapse. It is on a fairly low cooldown,
and since it also gives you back the mana you had 5 seconds ago, it effectively costs
zero mana (and at level 3, it actually costs none, unlike
<%= ability :skeleton_king_reincarnation %> it is not countered mana break abilities).

### Items

A good starting build for Weaver is <%= item :flask %>,
<%= item :tango %>, <%= item :ring_of_protection %> and <%= item :circlet %>.
Weaver only has 1 base armor, getting some additional armor helps a lot in lane.
Both the ring and the circlet are then built into <%= item :ring_of_aquila %>.
You will want to get <%= item :sobi_mask %> from the side-shop as soon as possible,
to allow for more uses of <%= ability :weaver_shukuchi %>. After Aquila, it is
always a good idea to get <%= item :power_treads %>.

After that, you would usually get <%= item :sphere %>, but not always.
Linken's Sphere is great on Weaver because it provides decent stats, mana and health regeneration,
as well as blocking targeted spells every 16 seconds, allowing you to splitpush
and escape. As said earlier, stuns and silences hurt Weaver a lot, and these are
mostly targeted. It also blocks items like <%= item :cyclone %>, making initiating on you a lot harder.
If the enemy team has none of these, you can consider skipping Linkens.
To make up for the mana regeneration, <%= item :medallion_of_courage %> is also a very good item on Weaver.

Now, on to your first damage item, the <%= item :desolator %>. It allows you to
melt through enemy supports, towers and Roshan alike. After Desolator, you can
either opt for even more damage in the form of <%= item :greater_crit %> or for
surviability in the form of <%= item :black_king_bar %> or <%= item :heart %>.
The decision is best made based on the team fights you had so far in the game.
If you are suffering from heavy magic damage or disables, Black King Bar would be the choice.
If you have general survivability issues, go for Heart of Tarrasque.
In most games, you would go for either Daedalus or Black King Bar first.

#### Alternatives

<%= item :maelstrom %> can be built as your first big item to accelerate your
farming speed. Unfortunately, Weaver does not benefit
from attack speed increases as much as other carries due to <%= ability :weaver_geminate_attack %>
being on a fixed cooldown. <%= item :hand_of_midas %> provides more farm than
Maelstrom for less gold, especially considering that both items will be sold eventually
(<%= item :mjollnir %> only increases attack speed, but not damage, making it even worse).

<%= item :monkey_king_bar %> can be built against opponents with evasion items or
 abilities (Phantom Assasin). If you are your team's main carry,
you should almost always build Monkey King Bar. If you started on an offlane position,
your main carry will usually build it and you do not have to, unless multiple enemies
posess evasion items. If you do decide to build it, you should do so in place of Desolator
(usually against a Phantom Assasion) or Daedalus.

### Gameplay

#### Laning

In offlanes, you should focus on getting as much farm and levels as possible.
If you get caught only slightly out of position, you can die very easily. Always have
60 mana to escape with <%= ability :weaver_shukuchi %>. If you get harassed a lot,
you can grab an early <%= item :ring_of_health %> from the side shop.

After you reach level 7 and have maxed Shukuchi, you can go for kills,
depending on the heroes you are up against, you can sometimes even get kills against dual lanes.
Be aware that <%= ability :weaver_time_lapse %> is your "Get Out of Jail Free card"
- pursue kills after using it and you risk feeding yourself to the enemy carry.

#### Farming

As soon as you complete <%= item :sphere %>, you can split push pretty safely.
At the same time, you can also farm your opponent's jungle. While farming, it is often useful
to let <%= ability :weaver_the_swarm %> tank and to use <%= ability :weaver_shukuchi %>
to move between camps.

When pressuring towers, you can use The Swarm on incoming enemy creeps, so that
the tower will attack the bugs instead of your own creeps, allowing you to take
down towers faster.

As soon as you get your first damage item like <%= item :desolator %> and
you have maxed The Swarm, you can solo Roshan in a rather short amount of time.
When doing this, use Shukuchi to get into the Roshan pit, cast The Swarm on
Roshan and if you are taking too much damage, simply cast Shukuchi again and wait
until The Swarm comes off cooldown.

#### Teamfights

It is very important to realize Weaver is a squishy hero. If you tank most of your
opponents big teamfighting abilities, you won't even live long enough to use
<%= ability :weaver_time_lapse %>. Because of this, your positioning during the fight
is very important. After somebody initiated, you use <%= ability :weaver_the_swarm %> and then
<%= ability :weaver_shukuchi %> through your enemies and behind them. This is usually where
their supports will be, and where they won't aim their AoE abilities.
Now, hopefully nobody noticed you, you start killing them one by one.

If you get focused and take heavy damage, use Time Lapse. You can also use Shukuchi
during fights to deal some additional damage and hopefully get your enemies to focus
one of your teammates instead. After you have successfully killed most of your opponents
and their poor Crystal Maiden starts running from you, you know what to do, you are
the best chaser in the game.
