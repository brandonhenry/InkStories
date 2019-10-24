VAR creature = "Irkon"
VAR died = false
VAR attack = "lightning"
VAR ignored_creature = false

=== Exploration ===

{cyrus: You decide to bring Cyrus along. The others are excited and worried as they watch you and their beloved friend head off on your adventure. | You decide to leave Cyrus behind. Cyrus shows concern in his face and he watches you walk away.}



As you make your way to the plains, you hear a loud yelping noise. It sounded as though an animal was dying, but there shouldn't be any creatures this close to the city.

{cyrus: Cyrus insists it is an infected creature that is making its way to the city.}

If the Essence-infected creatures are as dangerous as Cyrus made them out to be, you ponder if you should go off course to deal with the approaching creature or stay on course towards the Plains.

- (Directions)

* (PursueCreature) [Pursue creature] You decide to pursue the creature.
* (IgnoreCreature) [Ignore creature] You decide to ignore the creature. ~ignored_creature = true

- Continuing on, {cyrus: Cyrus begins explaining that the safest path to the Ligore is through the woods. However, it makes escape extremely difficult if anything happens. There is no clear path to follow, only subtle landmarks that he made to help him maneuver through the woods. These landmarks are noticeable not only by carving in certain trees, but also by rocks he attached around them using vines. | you can't help but wonder why you chose to leave Cyrus behind. Looking around, you're lost. {PursueCreature: The only thing you have to go on is the direction of the sound you heard the creature yelp in. | You have no idea what direction to go towards} You open your map and assume both the Ligore and the creature are located near the the chasm.}


{PursueCreature: -> CreatureHunt | -> Plains}

= CreatureHunt
To avoid wasting any time, you head towards the chasm and the direction of the yelp. The scenary is beautiful on the edge of the city surrounded by waterfalls that contained sharp blue water. The water was so clear that you could see the many distinct species of fish swimming around. 

You remember the days where you would come out to swim and catch fish for your familiy. As the sun beamed down, you are brought back to reality by a weird sound that can only be described as a painful screach. To your dismay:

* [You spot an Irkon!]
~creature = "Irkon"
* [You spot a Serf!]
~creature = "Serf"
* [You spot a Celphlon!]
~creature = "Celphlon"

- <> The wild {creature} was trapped beneath a boulder. Its cries for help shake the area and send chills down your spine. There doesn't appear to be any bleeding, so you know you have time to save the creature.

{creature == "Irkon": Its long scaly tail was frantically swaying back and forth in attempt to slither its way out. The size of this Irkon was unlike any you had ever seen. Even the creatures were evolving to life after the Calamity.}

{creature == "Serf": Fox-like creatures like these barely tend to get encaptured in such a way. You're caught off-guard by the resilence that the Serf has shown in staying alive. The size of the boulder did not stop it from fighting for its life.}

{creature == "Celphlon": It seemed as though the Celphlon had damaged its wings and could no longer fly after being stuck beneath the boulder. The frantic movement of its damaged wings was more than enough to reflect the pain it was going through.}

- (CreatureAid)
After taking a second to access the situation, you finally have to come to a decision. 

{cyrus: Suddenly, Cyrus tugs on your arm and warns you that {creature} are known to attract Essence-infected creatures.}

- (CreatureAidOptions)
    {Wait >= 3 and not died: After waiting for awhile, an Essence-infected creature shows up. It is much larger than any beast you have ever seen. The aura iminating from the monster was ominous and its teeth were the size of your entire body. Not being prepared for such a monster, you quickly try to escape. However, with a massive leap, the monster blocks your exit and kills you. -> Reset(-> CreatureAid)}
    
    * [Help the {creature}!] -> HelpTheCreature
    * [Ignore the endagered {creature}] 
    You decide to ignore the {creature}'s cries and head to the plains. ~ignored_creature = true -> Plains
    + (Wait) {cyrus && Wait < 3} [{&Wait and see what happens | Wait a little longer | Continue waiting }] 
    {You decide to wait... | You decide to wait a little longer... | You continue to wait patiently...}
    -> CreatureAidOptions
    
= HelpTheCreature
 You rush in quickly to help the {creature}. As it sees you, its screams intesifies. It is so loud you can barely think. Grabbing your weapon, you wedge it between the creature and the ground. With all your might, you attempt to lift the boulder to no avail. {not cyrus: Maybe if Cyrus was here, he could help, you think.} 
 
Maybe there is another way.

- (HelpCreatureOptions)
* [Destroy the rock with Essence]
Pondering what type of ability to use, you decide to destroy the rock with:

    -- (Abilities)
    
    ** [Lightning]
        ~ attack = "lightning"
    ** [Fire] 
        ~ attack = "fire"
    ** [Water] 
        ~attack = "water" 
    
    -- You unleashed a devastating {attack} attack upon the boulder. It disperses into tiny pieces freeing the {creature}.
     
    With joy, the {creature} runs away. 
    
    {cyrus: Feeling accomplished, you continue your voyage to the plains. -> Plains | Now that you have identified the source of the crying, you look around and notice that you are still lost. You head back to your starting point. -> Directions }
     
* [Destroy the rock with your Sword]
With a mighty swing of your sword, you attempt to destroy the rock. It cracks but your sword isn't powerful enough to destroy the boulder. -> HelpCreatureOptions
* {cyrus} [Ask Cyrus for assistance]
Cyrus wonders why you asked him for help with such a physically demanding task but attempts to help you anyway. While you lift the boulder just barely with your sword, Cyrus pushes against it with all his might. The boulder doesn't budge but the {creature}'s screams are even louder now. -> HelpCreatureOptions
* [Ignore the {creature}] 
You decide to ignore the {creature}'s cries and head to the plains. 
~ignored_creature = true 
-> Plains

=== Reset(-> return_to) ===
~ died = true
* [CTRL-Z!] -> return_to

-> END