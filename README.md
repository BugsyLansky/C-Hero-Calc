# C-Hero-Calc
PvE Solver for Cosmos Quest

## Summary

I took over the developement out of interest and educational purposes. Well, I also needed a good calculator an David's approach was a good place to start.
My goal is to provide a Calculator that is usable even on difficult problems in respect to Memory usage and calculation time.

Link to the current version: [see GitHub](https://github.com/Diceycle/C-Hero-Calc)
Download the source files form there and compile yourself or use the provided exe.

## What's New?

Now that the new Heroes are added in it's back to optimizing.

* Offers first estimate as a solution and requires confirmation before proceeding
* Precompiled Exe now doesn't ask for input mode, as ther is no way to change the source without recompiling anyway
* Fixed a bug that caused aoe damage to not be healed properly
* The program should now be OS-independent again

## Features

* C++ based Calcultor for solving PvE instances
* Heroes are implemented, levelable and abilities are fully functional
* Hero Levels will be saved between executions
* Completely controllable via Command Line
* All quests predefined and accessable
* Precompiled exe included (Built on Windows 8.1 (64Bit), no guarantee for other versions)

## Compiling

Since I split up the files you need to change your commands too. Personally I get it to compile by running:
> g++ -std=c++11 -o CosmosQuest main.cpp cosmosClasses.cpp inputProcessing.cpp

You can also use the provided Makefile. Main targets are default, clean, and run

## Input via command line

This program now defaults to asking you whether or not you want to input data via the command line. If you say yes it will take you through the steps and eventually start calculating. You can also access the quests by typing questX(replace X with the quest number) when asked for a lineup

## Alternative: Editing the file to save yourself a lot of work

If you know your way around a script and editing variables you can input your data directly into the file and avoid having to input it over and over again. Here are the values that can be adjusted, all located in the main-method in the main.cpp file.

* yourHeroLevels: Input your hero levels Note that you have to keep the braces at beginning and end.
* limit controls how many monsters are allowed in a solution. Set this to 4 or 5 when you do quests X-2 and X-3.
* hostileLineup defines against which lineup of monsters you want to fight against. Lineups are defined a bit above. Put the name inbetween the round braces after makeMonstersFromString. You can make your own lineup by following the patterns. Just remember to give it a unique name. All quests are available as quests[1], quests[2] and so on (Note here that indices start at 0 so quests[14] will run quest 15!)
* individual lets you run individual battles if you set it to true. It will ask for the two lineups via command line.

### If you want to use this method you have to compile the program yourself!
Finally choose no when starting the program and asked if you want to input data manually. Calculation shoud start right after.

## Regarding RAM usage

The RAM usage as well as computation time heavily scales with available Heroes. So I reccomend disabling as many Heroes as possible. If you calculate a DQ20 you probably wont need those Lv.1 Commons. Having only 10 Heroes is totally fine but if you have all of them, your machine will probably run out of RAM

## Bugs that I'm aware of

* Killing a Hero through AOE does not disable it's ability until all monsters before it are dead. Only a minor effect. But if you get a solution that simply doesn't work and there is AOE damage in the enemy lineup, this is most likely the reason.

## Potential Errors:

* bad_alloc: You get this error when the program tries to use more RAM than your computer has available. There is no fix available for this currently, but I work hard to try and reduce the general RAM usage. Eventually I will release a low-RAM version that should remove most of these problems.
* The programm outputs: "ERRORERRORERROR": If this happens you should leave a comment cause this is not normal behaviour.

## Moving forward

A couple of bug reports today made me realize that there are some problems with the routines of the program. The underlying method still works and will always find the best solution, but the optimizations that are in place change that.
What does that mean for you?
Not too much. Sometimes the solution that is found will not be optimal. I'd wager such cases are uncommon.
However, it riles me up more than you can imagine. My goal was to create a Calculator that always finds the best available solution without taking hours to complete. Shortly after I learned that RAM is a serious problem so I tried to keep that to a reasonable amount as well.
Now I don't know if both is possible at the same time. We'll see.

