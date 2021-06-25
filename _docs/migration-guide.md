---
title: Migration guide
subtitle: Most migrations (data base as well as data base content) will be done automatically during the start-up phase of an newer version.
author: kai
tags: [migration]
---

But there are some really small changes e. g. in config files etc. which have to be done manually, as described below.

Version 6.x to version 7

1. First item
2. Second item
3. Third item
    1. Indented item
    2. Indented item
4. Fourth item 



1. Configurationparameters changed
  1.1. `config.xml:holiday.month` is now 1-based (1 - January, ..., 12 - December), was 0-based.
  1.2. `projectforge.properties:projectforge.defaultFirstDayOfWeek=MONDAY` (full name of weekday: SUNDAY, ...)

2. Configuration parameters moved from `config.xml` to `projectforge.properties`
.. `config.xml:currencySymbol` -> `projectforge.properties:projectforge.currencySymbol=€`
.. `config.xml:defaultLocale` -> `projectforge.properties:projectforge.defaultLocale=en`
.. `config.xml:defaultTimeNotation` -> `projectforge.properties:projectforge.defaultTimeNotation=H24`
.. `config.xml:firstDayOfWeek` -> `projectforge.properties:projectforge.defaultFirstDayOfWeek=MONDAY`
.. `config.xml:excelPaperSize` -> `projectforge.properties:projectforge.excelPaperSize=DINA4`

. PhoneLookupServlet moved from `phoneLookup` to `rsPublic/phoneLookup`
