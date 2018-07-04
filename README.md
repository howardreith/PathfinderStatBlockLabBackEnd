Pathfinder Stat Block Lab

Pathfinder is a tabletop role-playing game developed by Paizo Inc. under the
Open Gaming License of Wizards of the Coast. When playing Pathfinder, the
Game Master is referee and storyteller, guiding the players through their
adventure and assuming the role of all non-player characters and enemies they
may encounter.

The Pathfinder Stat Block Lab is a tool for making the Game Master's life a
little easier. It aims to present creature stat information in a more
intuitively-organized manner than is available through other means.

This application has been developed by Howard Reith as his second project for
General Assembly's Web Development Immersive program.

Links to relevant sections of the project can be found here:

Live site:
https://howardreith.github.io/PathfinderStatBlockLab/

Live API:
https://safe-ocean-44449.herokuapp.com/

Front-End Repository
https://github.com/howardreith/PathfinderStatBlockLab

Back-End Repository
https://github.com/howardreith/PathfinderStatBlockLabBackEnd

Live link:
https://howardreith.github.io/PathfinderStatBlockLab/

What does it do?

The Pathfinder Stat Block Lab has two primary view states - one in one the user
can view a "stat block" for the relevant creature and a "lab" in which the user
can input information concerning the creature including its name, hit points,
armor class, attack bonus, and so on. The user can save this data on the
database and retrieve it via a search tool to construct the "stat block"
for reference while running the game.

Technologies used:

The Pathfinder Stat Block Lab makes use of Javascript, SCSS, HTML, Ruby on Rails,
and SQL.

It makes use of CSS buttons from https://freshdesignweb.com/css3-buttons/

Future Plans

The Stat Block Lab as it presently exists was originally intended to be the
secondary feature of the app. I had intended on seeding a database of over
3,000 Pathfinder creatures generated from the various Pathfinder bestiaries.
The application would primarily serve as a quick reference tool with a
"lab" element available for any monsters not already in the database. Due to
time constraints this was not possible.

the overall organization of the stat block is not quite what I hoped. I would
like to tweak some minor aspects in the future, mostly in regard to removing
some labels that are implicit in their location on the form to make it a bit
less cluttered.

The Process

I began this project by setting up as much "scaffolding" as possible. I first
created the rails databases with both the User and Creature tables, established
their relationship, and made certain both could be modified via CURL scripts.
I then constructed a basic HTML template with javascript functions to perform
those same actions through the browser. Thanks to my experience in the first
project, I was able to fulfill the majority of requirements for the project
within the first eight hours of work, which gave me some freedom thereafter.

Since I had, at the time, hoped to incorporate both the public and private
databases, my next goal was to set up the search engine on which most of the
application would depend. This took approximately ten hours of work to research
and implement, as I had never attempted such a mechanism before.

With the search engine in place, I next began building the "stat block" user
interface followed by the same for the "lab." I then began replacing the static
API interaction buttons I'd built to test the system with fields and systems
that would incorporate user actions into the API interactions. This took 8-10
hours of work.

Following this, I began working on the various "view states" of the application,
making certain no inappropriate elements or fields were showing when they should
not have been and setting up responses to every action a user could take. This
took a full eight hours of work, more than I expected.

For one hour I researched seeding a database with my creature statistics CSV
and determined I lacked the time remaining to achieve it. I have thus spent
the past five hours fixing bugs and testing.

Entity Relationship Diagram

The entity relationship is simple. Each user has many creatures.

User ----------< Creatures
