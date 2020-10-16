# Text Invaders!
by Patrick Devine, 2019-2020

TL;DR - A unicode space shooter based upon class Space Invaders from 1978

Try it out with the command:

```
  $ docker run -it --rm ghcr.io/pdevine/textinvaders
```

It should look something like:

![Text Invaders!](https://github.com/pdevine/textinvaders/blob/main/imgs/textinvaders.png)


This game was the second that I wrote to show off my Unicode/ASCII Sprite
library [go-asciisprite](github.com/pdevine/go-asciisprite), with the first
being [Tetromino Elektronika](github.com/pdevine/tetromino). This game,
however, is the first that uses Unicode block characters as "pixels" to make it
look more like an actual graphical game.

So why use Unicode block graphics to create a game? It was really to see how
far I could push the library. I'd been thinking a lot about old ANSI based BBS
games from back in the 1990's, and I'd seen the really impressive [Paku
Paku](https://www.classicdosgames.com/game/Paku_Paku.html) game by Jason Knight
which uses a trick in DOS to create a 16 colour game using CGA text mode.

For Text Invaders!, I decided to skip using colour, at least to just prove that
the game would work. I've since gone back and made changes go-asciisprite to support
the full 256 colour Xterminal palette, so if you're interested in making a
graphical text game, it's certainly possible to do.

The block "font" I used inside of the game is based loosely on the font in Paku Paku.
Even though you can use real text directly in the game, I wanted it to
look more pixelated so that it wouldn't break the illusion that you were playing
an actual graphical game. The Paku Paku font is available directly in the go-asciisprite
library to use if you want to use it in your own games.

So what's next for Text Invaders? I've still been tweaking it occasionally by
adding extra things. There's now a stats screen, and a title screen which 
makes it easier for players to know how to re-size their terminal to the
correct size. I've been thinking a lot about how movement works in Galaxian
and Galaga and thinking of changing up the way waves work, so it's possible that
there might be some pretty big changes in the future. We'll have to see.

