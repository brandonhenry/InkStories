VAR creature = "Irkon"

=== Exploration ===

{cyrus: You decide to bring Cyrus along. The others are excited and worried as they watch you and their beloved friend head off on your adventure. | You decide to leave Cyrus behind. Cyrus shows concern in his face and he watches you walk away.}



As you make your way to the plains, you hear a loud yelping noise. It sounded as though an animal was dying, but there shouldn't be any creatures this close to the city.

{cyrus: Cyrus insists it is an infected creature that is making its way to the city.}

If the Essence-infected creatures are as dangerous as Cyrus made them out to be, you ponder if you should go off course to deal with the approaching creature or stay on course towards the Plains.

* (PursueCreature) [Pursue creature] You decide to pursue the creature.
* (IgnoreCreature) [Ignore creature] You decide to ignore the creature.

- Continuing on, {cyrus: Cyrus begins explaining that the safest path to the Ligore is through the woods. However, it makes escape extremely difficult if anything happens. There is no clear path to follow, only subtle landmarks that he made to help him maneuver through the woods. These landmarks are noticeable not only by carving in certain trees, but also by rocks he attached around them using vines. | you can't help but wonder why you chose to leave Cyrus behind. Looking around, you're lost. {PursueCreature: The only thing you have to go on is the direction of the sound you heard the creature yelp in. | You have no idea what direction to go towards} You open your map and assume both the Ligore and the creature are located near the the chasm.}


{PursueCreature: -> CreatureHunt | -> HeadToPlains}

= CreatureHunt
To avoid wasting any time, you head towards the chasm and the direction of the yelp. The scenary is beautiful on the edge of the city surrounded by waterfalls that contained sharp blue water. The water was so clear that you could see the many distinct species of fish swimming around. 

You remember the days where you would come out to swim and catch fish for your familiy. As the sun beamed down, you are brought back to reality by a weird sound that can only be described as a painful screach. To your dismay:

* [You spot an Irkon!]
* [You spot a Serf!]
~creature = "Serf"
* [You spot a Celphlon!]
~creature = "Celphlon"

- <> The wild {creature} was trapped beneath a boulder. Its cries for help shake the area and send chills down your spine. There doesn't appear to be any bleeding, so you know you have time to save the creature.

{creature == "Irkon": Its long scaly tail was frantically swaying back and forth in attempt to slither its way out. The size of this Irkon was unlike any you had ever seen. Even the creatures were evolving to life after the Calamity.}

{creature == "Serf": Fox-like creatures like these barely tend to get encaptured in such a way. You're caught off-guard by the resilence that the Serf has shown in staying alive. The size of the boulder did not stop it from fighting for its life.}

{creature == "Celphlon": It seemed as though the Celphlon had damaged its wings and could no longer fly after being stuck beneath the boulder. The frantic movement of its damaged wings was more than enough to reflect the pain it was going through.}

After taking a second to access the situation, you finally have to come to a decision. 

{cyrus: Suddenly, Cyrus tugs on your arm and warns you that {creature} are known to attract Essence-infected creatures.}

* Help the {creature}!
* Ignore the endagered {creature} 
-->END
= HeadToPlains

-> END