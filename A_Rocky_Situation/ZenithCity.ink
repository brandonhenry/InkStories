
=== Start ===

On your way through the Main Plaza, you notice some rocks being thrown in your direction. 

* [Find the source of the rocks] 
Looking around, you spot a group of children throwing rocks around for fun. 

* [Move the rocks aside]
Using essence, you push the rocks out of your path and continue walking. 

- Suddenly, one of the children picks up an extraordinarily large rock. This immediately catches your attention.

* (approach) [Approach the children]
You then decide to approach the children, hoping that the child doesn't throw the large rock. 

* (yell) [Yell at the children] 
Realizing the danger of the situation, you let out a yell in the childrens direction.

* [Ignore the situation] 
Despite your curiosity, you continue walking and ignore the children. 
-> Ignored

- -> InteractWithChildren

=== Ignored ===
-> END

=== InteractWithChildren ===

Upon further examination, you spot three children. A young girl who appears to be in her early teens. A young boy with scruffy hair and a scar on his shoulder. Finally, you see the child who is holding the larger rock. He appears to be the ring leader. This kid has a taller stature with torn clothing as if he had been exploring through the woods not too far from the city. 

After glancing over the diverse group of kids, you collect your thoughts.

* "What has gotten into you kids[?"]," you ask.

* "Why are you throwing rocks[?"]," you ask.

- The younger boy with scruffy hair steps up. He looks you up and down. Anyone could notice the excitement iminating from him. With a big smile he yells,

"I've never seen a real life hero before! Do something cool! Do something cool!"

Not expecting such a reaction, you're stunned.

- (opts) 
    * (SomethingCool) [Do something cool]
    Though it is discouraged, you use your essense to twirl the rocks around first making a figure eight shape and then to form a white lotus flower which catches the young girls attention.

    The young boy starts jumping with joy at your performance. 

    * (AddressLeader) [Address the ring leader] 
    {not SomethingCool: You decide to ignore the younger boy. His face immediately shows disappointment.} 
    
    Walking up to the boy who looks like the ring leader, you sense that something is different about this kid. 

        ** "Why would you play with such a large stone[?"], you ask concerningly. 
        ** "You should set a better example for your younger friends"[..."], you say in disappointment.
    
        -- -> RingLeaderDiscussion
    
    * [Speak to the young girl] 
    {not SomethingCool: You decide to ignore the younger boy. His face immediately shows disappointment.} 
    
    The young girl had an innocent appearance. She looked as though she was trying to prevent the two other boys from throwing rocks in such a public area. As I approached her, she seemed hesitant.

        ** [Hi, how are you?]
        ** [Can you tell me why you guys were throwing rocks?]
        
        -- ...silence. The young girl doesn't seem to want to talk. You turn towards the ring leader.
        -> AddressLeader
    
    - -> opts


=== RingLeaderDiscussion ===

Rock in hand, the boy looks around as if he did not expect anyone to address his actions. The boy immediately drops the rock and apologizes.

"I'm sorry sir, I did not mean to cause you any harm. We found these rocks out by the Plains and thought they were really cool! They even glowed when we found them."

"Cyrus really has a thing for cool glowing stuff," the scruffy boy says while still seemingly excited. "Every time we go out near the plains, he always finds the best rocks!"

"Shh, Lektor, you shouldn't speak when not spoken to," the young girl whispers in a commanding tone.

- (questions) 

    * ["Would you happen to be siblings?"] 
    Cyrus responds with a grin,

    "No, but we might as well be. We've known each other for years! This is my younger 'brother' Lektor and that's Estelle."
    
    * ["You kids really shouldn't be out near the plains"] 
      "But that's where we have all our fun!", the young scruffy haired boy replies. "You should know, my name is Lektor and I'm not afraid of anything!"
        -> questions
        
    - Realizing that the kids have made the Plains their little playground, you wonder why no one has stopped them from playing there. Strongly concentrated essence is extremely dangerous and not a place for children. Are the rocks there really that exciting?

      Before you can come up with a course of action, Lektor's eyes light up and he scream,
    
       "Hey! You should help us get to the Ligore!"

    * ["What's the Ligore?"] 
    * ["No, you should stay away from the Plains, they're dangerous"]
    "You wouldn't be saying that if you knew what the Ligore was," Estelle whispers from behind the two boys. 
    
    - -> WhatIsTheLigore

=== WhatIsTheLigore ===

Cyrus steps forward and begins to explain what the Ligore is.

"Rumor has it, the Ligore is one of the most powerful Waystones to ever exist. The amount of Essence that it can hold was so overwhelming that the Waystone eventually collapsed. This caused the surrounding area to be engulfed in Essence."

"As you may have guessed," Cyrus continues, "the environment was affected by this essence. Zenithian mages did their best to cover up the existence of the Ligore, but these rocks prove that it must exist. I have always had an unusual connection with the earth and Essence. I can sense that we're getting closer to the Ligore, but the closer we get, the more dangerous the terrain is. Going alone, I couldn't even make it back unscathed."

* [Why are you so interested in the Ligore?]
Uncharacteristically, Estelle yells, "It's for Cyrus! He needs this!"

* [It does not sound like something to risk your life over]
"It is more than worth risking my life over," Cyrus states.

* [You should forget about the Ligore, it's just a rumor]
"That's not an option for us," Cyrus retorts.

- -> AcceptMission

=== AcceptMission ===

Noticing how stubborn these kids seem to be, you realize that the Ligore must have some significance to them. Being capable of exploring the Plains, you decide to help the kids. 

"I will help, but you kids have to stay here while I access the area."

Estelle seemed shocked by this response. Meanwhile, Lektor looked as though he could explode from all the excitement building up. 

Cyrus, however, looks at me and states, "Let me come with you. I know the area like the back of my hand and there are creatures who have been affected by the Essence that you should avoid at all cost. You will need me." 

* [Bring Cyrus along] 
~ cyrus = true

* [Leave Cyrus behind] 
~ cyrus = false

- -> Exploration

