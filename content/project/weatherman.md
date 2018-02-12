---
author: Josh Wood
date: 2007-02-07T01:32:28-08:00
description: Plan 9 system manual page for the weather(1) program
tags:
- Plan 9
- weather
- Dylan
title: Plan 9 /sys/man/1/weather
type: page
---

### NAME

weather -- know which way the wind blows

### SYNOPSIS

`weather [ air ] [ st ]`

### DESCRIPTION

`Weather` prints the local conditions and seven-day forecast most recently reported at the US airport with the three–letter location identifier *air*. Given a two–letter US state abbreviation *st* instead, `weather` prints a table of *air* location identifiers known for *st*.

The arguments are mutually exclusive and case–insensitive. If neither is given, *air* defaults to location identifier `ewr`, designating the Newark, NJ, airport near Bell Labs, Murray Hill.

### SOURCE

`/rc/bin/weather`

### SEE ALSO  

Bob Dylan, "Subterranean Homesick Blues"
