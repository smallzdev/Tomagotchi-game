# hatchapet!

Our Godot Tamagotchi game! This is our 2nd submission to [Hack Club Third Space](https://thirdspace.hackclub.com) where you spend 10 hours a week for 8 weeks making projects! We are only begginers, so please don't judge us too harshly. Something that might seem like it could've taken only half an hour might take us hours including debugging, fixing stuff, cleaning up scripts, customisation, and more.

What is a Tamagotchi game you might ask? It's basically like a virtual pet you need to look out and care for! You're meant to feed it, water it, and do tasks to raise it.

Made with ❤️ by [Smallz](https://github.com/smallzdev) and [Vick-St3r](https://github.com/Vick-St3r)

***Play the latest release [here!](https://vick-st3r.itch.io/hatchapet-week-one)***

# Credits
This game was made by Victoria and Smallz. We may of reused some of the assets from our old game, or used free assets from a free public domain [Pixel Pack](https://pixelfrog-assets.itch.io/pixel-adventure-1) made by [Pixel Frog](https://pixelfrog-assets.itch.io/). Of course, we also made our own art specially for this game too.

The font is from [jame gam made by augie!](https://jamegam.hackclub.com/)

# Weeks
Every week we write another section in the readme explaining what we've done that week. Just note, it starts at week one but it's actually week 5 of thirdspace due to us doing a different project in the first half of Third Space.

# AI Declaration
Both of us only used AI to debug a bit of our code and to ask it a few general questions about GoDot. Please note that we are still both very new to game development and Godot! This is our second game :D

# Week 1: Cinnamon
<details open>
<summary></summary>

Week one release [here!](https://vick-st3r.itch.io/hatchapet-week-one)

This is the first week of starting the project, the theme this week is "Cinnamon".

![image](https://github.com/smallzdev/Tomagotchi-game/blob/main/screenshots/week5.PNG)

Here is our main menu! If you hover over the title, it turns rainbow!! It also has rainbow sprinkles/confetti :D

![image](https://github.com/smallzdev/Tomagotchi-game/blob/main/screenshots/week5again.PNG)

The credits page! Hover over the title and names - it turns rainbow!!

I'm super proud how the menu screens turned out - I learned how to style them and add hover + click animations 

![image](https://github.com/smallzdev/Tomagotchi-game/blob/main/screenshots/week5egg.PNG)

After clicking play - you have to hold for 5 seconds to hatch your egg

There's a camera shake and a countdown!

![image](https://github.com/smallzdev/Tomagotchi-game/blob/main/screenshots/week5main.PNG)

Here's the main part of the game. Currently there's not much, but you can tend to your pet. In future weeks, we look forward to adding some sort of mini game to actually feed your pet (?) Whether it be a game to get the food with currency or feeding your pet - we will have to see! 

I also want to fix the main UI, however I'm not entirely sure. It feels like there's something missing or something I need to simplify in order for it look cleaner.

## What we learned

One aspect of game development we both learned from the first project is keeping everything organized. When we first started Autumn Adventures, we didn't put scenes or scripts in any folders. Eventually we did organzie our folders (merge conflict...), but it was just scenes and scripts. Some of our scripts were even in our scenes folder. In the end, our game got too big and it was hard to find the correct scene and script. It was also a pain, because if you moved a script/scene you had to check if your code referred the old path of the script/scene. 

This time, we have folders in folders... (wow it took us 4 weeks to figure that out). Hopefully everything stays organized and easy to manage!

One thing we NEED to learn is Object Orientated Programming. We are planning a gacha system for our pets and currently... it looks like a pain to code. We need to define what pets are in a proper inventory system, then create a way to define common, rare, legendary, etc.... and also make the rates.... D: 

If we don't... adding a new pet would be terrible. We would have to change all the hardcoded numbers and everything...

As of now, our inventory system is hardcoded too - so we need to work a lot to get everything going...

I'm not entirely sure how to define everything properly, so we don't have to go through 10000000 hard coded lines of if statements. 

TL;DR We need to be more organized + learn how to write good code outside of if statements 

## Feature list

1. Main functionality, credits, settings (only scene really), catadex, main game menu, and (maybe) more menus!
2. Updating stat bars.
3. Working food, energy, and water buttons.
4. The ability to click you're pet (pat it) and get more love stats.
5. Spooky Ghost pet :0 + very cute penguin
6. Egg hatch
7. *Camera shake*
8. Rainbow particles
9. Cool buttons + rainbow hover animations

## Future plans 

- Change cursor in game
- More particle effects 
- Gacha system.... -> classes for pets -> inventory script -> actual doing the gacha -> defining pets...
- Sound effects 
- Currency?
- Shop? Buy more eggs to collect more
- Levels (?)
</details>

