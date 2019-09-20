# Tick-Tac-Toe in ada!

Welcome to Tic-Tac-Toe in ada, also known as Tada! Tada is just like the basic Tick-Tac-Toe game, but with an extra twist! You are allowed to overwrite your opponents moves. However, the game will still end after 9 moves, even if all the squares are not filled in. 

## The Language

Tada was built using the ada programing language, extended mostly from pascal with a smattering of other languages. Think of ada like C, but with bash flow, python objects and javascript silliness. For more information on the language, visit the [wikipedia page](https://en.wikipedia.org/wiki/Ada_%28programming_language%29) or this wonderful tutorial site: [adacore](https://learn.adacore.com/courses/intro-to-ada/index.html)

## The Algorithm behind Tada

Tada has all the artificial intelligence builtin algorithms you would expect from a top quality tic-tac-toe game: none, nada, zip! Tada was created to bring people together, as such two players are necessary to get the most out of Tada, so we encourage you to look up from your keyboard and force you friends to come interact with you! Because really, whats more fun than making your friends cry over tic-tac-toe!? 

## Flow of Play

When you start the game, you are shown the rules and how to play, we won't reiterate them here. But, the flow of the game is thus: 

 1. Player one chooses a quadrant to place their mark in
 2. Player two chooses a quadrant to place their mark in
 3. Repeat until someone wins, or 9 moves have passed resulting in a tie
 4. Not following directions too much is an auto loss, as you clearly need to study up on how to play the game...

Here is a nice visual for how the game plays out in the console:

![Tada Gameplay](/assests/tada_gameplay.png)

See if you can find the hidden message for really bad players (Not pictured in the above image)!

## Example Code for Tada

Here will let you peak behind the curtain at the amazing function to print out our tic-tac-toe board:

```ada
   for J in  1 .. 9  loop
       if J = 4  or J = 7  then
       	  Put_Line("");
       end  if;
       Put(Arr(J));
       if J = 9  then
       	  Put_Line("");
       end  if;
   end  loop;
```

As you can see, we are looping through 9 times, and each time printing out the value of the array which holds our board. We add a newline after 4 and 7 as they are the end  of the right side of the board. For example, the start screen will look like so:

![Tada Start Screen](/assests/tada_game_start.png)

## Closing

Thank you for choosing Tada for all your tic-tac-toe shenanigans! If you would like to learn more about Tada, feel free to message its magnanimous creator through GitHub: https://github.com/klitscher
