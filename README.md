# Beat The Bully
* ### A side-scrolling 2D beat'em up brawler where the player fights through waves of enemies.

<img width="801" height="507" alt="Screenshot 2026-08-05 002228" src="https://github.com/user-attachments/assets/7f7fc358-0802-42bf-87bc-beae2a3a2275" />

<a href="https://vbdullatif.itch.io/btb">
  <img src="https://github.com/user-attachments/assets/d121fa20-259f-4b20-8d5e-abfdb97b0c26" alt="TRY ME" width="300" />
</a>

## Features
* ### Retro
* ### Action
* ### Arcade
* ### Side scroller
* ### Indie game

## How it works
#### All systems talk to each other through global signal managers (StageManager, DamageManager) instead of direct node references. When an arena section begins, the stage tells the camera to lock its movement and spawns enemy waves dynamically. The stage only unlocks and moves forward once every spawned enemy emits its defeat signal

## Acknowledgements
#### Followed this tutorial to build the base game: https://youtube.com/playlist?list=PLNNbuBNHHbNGtZjygmnJ2fBvp6JmDNkAm&si=e0Ubdww-cylGFZ1P

## Note:
* ### AI was used in debugging this project
