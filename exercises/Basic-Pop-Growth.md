---
layout: exercise
topic: Basic
title: Basic Population Growth
language: R
---

As you've read, population growth (or decline) is determined by how many individuals survive from year to the next (S), how many are born from one year to the next (B), how many new individuals show up from other places (immigration, I), and how many individuals leave to go to other places (emmigration, E).
The greater sage-grouse is a species of concern in the Intermountain West because suitable habitat is declining.
Our goal is to determine how much habitat can be lost before the population growth rate ($\lamda$) drops below 1, which indicates a declining population.
To achieve our goal, you will write an ``R`` script that calculates population growth rate ($\lambda$) under different scenarios of habitat loss.

Remember that $\lambda = s + b$ if we assume a closed population (which we will!).
So, anything that affects survival or birth rates will affect population growth rate.
Here are some helpful values:

1. Current sage-grouse survival rate (s) is 0.8.
2. Current sage-grouse birth rate (b) is 0.2.
3. For every hectare of habitat lost, sage-grouse survival drops 0.1%.
4. For every hectare of habitat lost, sage-grouse birth rates drop 0.03%.

Think through this problem with your group before writing anything down.
You will turn in three things:

1. A written statement of how you plan to attack this problem (e.g., what is the algorithm you will code in ``R``).
2. An ``R`` script implementing your plan from #1.
3. A figure showing number of hectares lost on the x-axis and population growth rate on the y-axis. BONUS: how can you indicate the point at which population growth rate falls below 1?


